<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>paramTest3.jsp</h1>
<%
String name=request.getParameter("name");
String age = request.getParameter("age");
String addr= request.getParameter("addr");
String tel = request.getParameter("tel");
%>
<h2>이름 : <%=name %></h2>
<h2>나이 : <%= age%></h2>
<h2>주소 : <%=addr %></h2>
<h2>전번 : <%=tel %></h2>
</body>
</html>