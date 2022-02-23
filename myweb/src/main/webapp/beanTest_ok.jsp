<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>BeanTest_ok.jsp</h1>
<jsp:useBean id="btest" class="yong.bean.BeanTest"></jsp:useBean>
<%
String name=request.getParameter("name");
int age=Integer.parseInt(request.getParameter("age"));
String addr =request.getParameter("addr");
String tel = request.getParameter("tel");
%>

<jsp:setProperty property="*" name="btest" />

<h2>이름 : <jsp:getProperty property="name" name="btest"/> </h2>
<h2>나이 : <%= btest.getAge() %> </h2>
<h2>전번 :<%= btest.getTel() %> </h2>
<h2>주소 :<%= btest.getAddr() %> </h2>
</body>
</html>
