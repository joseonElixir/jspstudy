<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>익숙해져야 할 JSP 코드 방식</h1>
<table border="1" width="550">
	<%for(int i=1;i<10;i++){ %>
		<tr>
		<%for(int j=2;j<10;j++){ %>
			<td><%=j %>X<%=i %>=<%=j*i %></td>
		<%} %>
		</tr>
	<%} %>
</table>

</body>
</html>