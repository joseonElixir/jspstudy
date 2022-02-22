<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>paramTest2.jsp</h2>
<form name="pt2" action="paramTest3.jsp">
<%
String name= request.getParameter("name");
String age = request.getParameter("age");

%>
<input type="hidden" name ="name" value="<%=name%>">
<input type="hidden" name ="age" value="<%=age%>">
주소 : <input type="text" name="addr"><br>
전화번호 : <input type="text" name="tel"><br>
<input type="submit" value="전달">
</form>
</body>
</html>