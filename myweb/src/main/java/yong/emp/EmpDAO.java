package yong.emp;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;

import yong.db.YongDB;

public class EmpDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public EmpDAO() {
		System.out.println("EmpDAO생성자 호출.");
		
	}
	
	
	
	
	/** 사원등록 관련 메서드*/
	public int empAdd(EmpDTO dto) {
		
		try {
			
			String sql="insert into employee values(employee_idx.nextval,?,?,?)";
			ps = conn.prepareStatement(sql); 
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getEmail());
			ps.setString(3, dto.getDept());
			int count = ps.executeUpdate();
			return count;
			
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {		
			}
		}
	}
	
	public int empDel(EmpDTO dto) {
		
		try {
			
			
			String sql = "delete from employee where name=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			int count= ps.executeUpdate();
			
			return count;
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
			}	
		}
	}
	
	/**모든 사원 내역 보기*/
	public EmpDTO[] empList() {
		try {
			conn = YongDB.getConn();
			
			String sql ="select * from employee order by idx desc";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			
			Vector<EmpDTO> arr = new Vector<EmpDTO>();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String dept = rs.getString("dept");
				
				EmpDTO dto = new EmpDTO(idx, name, email, dept);
				arr.add(dto);
			}
			EmpDTO dtos[]= new EmpDTO[arr.size()];
			arr.copyInto(dtos);
			return dtos;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {

			}
		}
	}
	
	public EmpDTO[] empGetInfo(EmpDTO dto) {
		try {
		
			
			String sql ="select * from employee where idx=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, dto.getIdx());
			rs=ps.executeQuery();
			
			Vector<EmpDTO> arr = new Vector<EmpDTO>();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String dept = rs.getString("dept");
				
				dto = new EmpDTO(idx, name, email, dept);
				arr.add(dto);
			}
			EmpDTO dtos[]= new EmpDTO[arr.size()];
			arr.copyInto(dtos);
			return dtos;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {

			}
		}
	}
	
	
	public EmpDTO[] empSearch(EmpDTO dto) {
		try {
		
			
			String sql= "select * from employee where name=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			rs=ps.executeQuery();
			Vector<EmpDTO> arr= new Vector<EmpDTO>();
			
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String dept = rs.getString("dept");
				
				dto = new EmpDTO(idx, name, email, dept);
				arr.add(dto);
			}
				EmpDTO dtos[]= new EmpDTO[arr.size()];
				arr.copyInto(dtos);
				return dtos;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
	}
	
	
	
	
	public int empUpdate(EmpDTO dto) {
		try {
			
			
			String sql = "update employee set name=?,email=?,dept=? where idx=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getEmail());
			ps.setString(3, dto.getDept());
			ps.setInt(4, dto.getIdx());
			
			int count = ps.executeUpdate();
			
			if(count>0) {
				return count;						
			}else {
				return -1;
			}
		
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();				
			} catch (Exception e2) {

			}
		}
		
	}
	
}
