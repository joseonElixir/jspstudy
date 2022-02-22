<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
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
	width:550px;
	margin:0px auto;
	border-top: 3px double yellow;
	border-bottom: 3px double yellow;
	
}
table th{
	background-color: skyblue;
}
table td{
	text-align: center;
}

</style>
</head>
<body>
<%@include file="header.jsp" %>
<section>
	<article>
		<h2>사원 검색 결과</h2>	
		<table>
			<thead>
				<tr>
					<th>사원번호</th>
					<th>사원이름</th>
					<th>이메일</th>
					<th>부서명</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="4">DB에서 실시간으로 조회한 결과입니다.</td>
				</tr>
			</tfoot>
			<tbody>
			<% 
			String name = request.getParameter("name");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="scott";
			String pwd="1234";
			
			Connection conn = DriverManager.getConnection(url, user, pwd);
			
			String sql="select * from employee where name=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,name);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				do{
					%>
					<tr>
						<td><%= rs.getInt("idx") %></td>
						<td><%= rs.getString("name") %></td>
						<td><%= rs.getString("email") %></td>
						<td><%= rs.getString("dept") %></td>
					</tr>
					<%
				}while(rs.next());
			}else{
				%>
				<tr>
					<td colspan="4">"<%=name%>"에 대한 결과를 찾을 수 없습니다.</td>
				</tr>
				<%
			}
			
			rs.close();
			ps.close();
			conn.close();
			%>
			</tbody>
		</table>
	</article>
</section>
<%@include file="footer.jsp" %>
</body>
</html>