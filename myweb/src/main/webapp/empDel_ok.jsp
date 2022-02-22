<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String name = request.getParameter("name");

Class.forName("oracle.jdbc.driver.OracleDriver");
String url ="jdbc:oracle:thin:@localhost:1521:xe";
String user ="scott";
String pwd ="1234";

Connection conn = DriverManager.getConnection(url, user, pwd);

String sql = "delete from employee where name=?";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1, name);

int count = ps.executeUpdate();

ps.close();
conn.close();

if(count>0){
	%>
	<script>
	window.alert('퇴사처리 완료');
	window.location.href='emp.jsp';
	</script>
	<%
}else{
%>
	<script>
	window.alert('해당 정보가 존재하지 않습니다.');
	window.location.href='emp.jsp';
	</script>
<% 
}
%>
