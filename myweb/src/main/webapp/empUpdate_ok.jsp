<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String idx_s = request.getParameter("idx");
int idx = Integer.parseInt(idx_s);	
String name = request.getParameter("name");
String email = request.getParameter("email");
String dept = request.getParameter("dept");

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "scott";
String pwd = "1234";

Connection conn = DriverManager.getConnection(url, user, pwd);

String sql="update employee set name=?,email=?,dept=? where idx=?";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, dept);
ps.setInt(4, idx);

int count = ps.executeUpdate();

ps.close();
conn.close();

if(count>0){
	%>
	<script>
	window.alert('수정 완료');
	window.location.href='emp.jsp';
	</script>
	<%
}else{
	%>
	<script>
	window.alert('수정 실패');
	window.location.href='emp.jsp';
	</script>
	<%
}


%>