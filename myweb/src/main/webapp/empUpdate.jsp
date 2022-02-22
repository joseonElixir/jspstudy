<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<style>
h2{
	text-align: center;
}
table{
	text-align: center;
	margin:0px auto;
}
</style>
<script>
 function can(){
	 window.location.href='emp.jsp';
 }

</script>
</head>
<body>
<section>

<%@ include file="header.jsp" %>
<%
int idx=0;
try{	
	idx=Integer.parseInt(request.getParameter("idx"));
}catch(Exception e){
	%>
	<script>
	window.alert('잘못된 입력입니다.');
	window.location.href='emp.jsp';
	</script>
	<%
}

Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String pwd = "1234";
Connection conn = DriverManager.getConnection(url,user,pwd);

String sql = "select * from employee where idx=?";
PreparedStatement ps= conn.prepareStatement(sql);
ps.setInt(1, idx);
ResultSet rs = ps.executeQuery();
String name="";
String email="";
String dept="";
if(rs.next()){
	name = rs.getString("name");
	email = rs.getString("email");
	dept = rs.getString("dept");
	%>
	<h2>"<%=name%>"사원의 정보 수정</h2>
	<% 
}else{
	%><h2>해당 사원의 정보가 존재하지 않습니다</h2><% 
	
}
rs.close();
ps.close();
conn.close();
%>
<form action="empUpdate_ok.jsp">
	<fieldset>
	<input type="hidden" name="idx" value="<%=idx%>">
		<table>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" value="<%= name%>"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" value="<%= email%>"></td>
			</tr>
			<tr>
				<th>부서명</th>
				<td><input type="text" name="dept" value="<%= dept%>"></td>
			</tr>
			<tr>
				<td colspan="2"> <input type="submit" value="수정"><input type="button" value="취소" onclick="can();" >	
			</tr>
		</table>	
	</fieldset>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>