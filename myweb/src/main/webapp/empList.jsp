<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<style>
h2{
	text-align:center;
}
table{
	width:550px;
	margin:0px auto;
	border-top: 3px double darkred;
	border-bottom: 3px double darkred;
}
table th{
	background-color: skyblue;
}
table td{
	text-align: center;
}

</style>
</head>
<%@ include file="header.jsp" %>
<section>
	<article>
		<h2>모든 사원 내역</h2>
		<table>
			<thead>
				<tr>
				<th>사원번호</th>
				<th>사원이름</th>
				<th>E-mail</th>
				<th>부서명</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="4">
					상기 사원 내용은 실시간 업데이트 되었습니다.
					</td>
				</tr>
			</tfoot>
			<tbody>
			<%
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url= "jdbc:oracle:thin:@localhost:1521:xe";
			String user ="scott";
			String pwd = "1234";
			
			Connection conn = DriverManager.getConnection(url, user, pwd);
			String sql= "select * from employee order by  idx desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				do{
					%>
					<tr>
						<td><%=rs.getInt("idx") %></td>
						<td><%=rs.getString("name") %></td>
						<td><%=rs.getString("email") %></td>
						<td><%=rs.getString("dept") %></td>
					</tr>
					<%
				}while(rs.next());
			} else{
				%>
				<tr>
					<td colspan="4" align="center">
					등록된 사원이 없습니다.
					</td>
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
<%@ include file="footer.jsp" %>
<body>

</body>
</html>