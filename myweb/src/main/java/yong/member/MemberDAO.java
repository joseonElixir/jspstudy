package yong.member;

import java.sql.*;
import java.util.*;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAO() {
		
	}
	
//	/**DB연동 메소드*/
//	public void dbConnect() {
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			String url="jdbc:oracle:thin:@localhost:1521:xe";
//			String user= "scott";
//			String pwd="1234";
//			conn=DriverManager.getConnection(url, user, pwd);
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		
//	}
	
	/**회원가입 관련 메소드*/
	public int memberJoin(MemberDTO dto){
		try {
			conn= yong.db.YongDB.getConn();
			String sql="insert into jsp_member values(jsp_member_idx.nextval,?,?,?,?,?,?,sysdate)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getPwd());
			ps.setString(4, dto.getEmail());
			ps.setString(5, dto.getAddr());
			ps.setString(6, dto.getTel());
			int count = ps.executeUpdate();
			
			return count;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {				
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {
			}	
		}
	}
	/**중복검사*/
	public boolean idCheck(String userid) {
		try {
			conn= yong.db.YongDB.getConn();
			String sql= "select id from jsp_member where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			
			return rs.next();
		
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				
			}
		}		
	}
	
	/**회원검색 관련 메소드*/
	public ArrayList<MemberDTO> memberFind(String fKey, String fValue){
		
		try {
			conn=yong.db.YongDB.getConn();
			String sql = "select * from jsp_member where "+fKey+"=?"; 	
			ps=conn.prepareStatement(sql);
			ps.setString(1, fValue);
			rs=ps.executeQuery();
			ArrayList<MemberDTO> arr = new ArrayList<MemberDTO>();
			
			while(rs.next()) {
				int idx= rs.getInt("idx");
				String id = rs.getString("id");
				String name= rs.getString("name");
				String pwd = rs.getString("pwd");
				String email = rs.getString("email");
				String addr = rs.getString("addr");
				String tel = rs.getString("tel");
				java.sql.Date joindate = rs.getDate("joindate");
				
				MemberDTO dto = new MemberDTO(idx, id, name, pwd, email, addr, tel, joindate);
				arr.add(dto);
			}
			return arr;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(ps!=null)conn.close();
			} catch (Exception e2) {
				
			}
		}
	}
}
