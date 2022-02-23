package yong.emp;

import java.sql.*;

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
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String pwd = "1234";
			conn=DriverManager.getConnection(url, user, pwd);
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
	
	
}
