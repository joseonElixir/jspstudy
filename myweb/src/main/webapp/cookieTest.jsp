<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>cookieTest.jsp</h1>
<%
//1. 
Cookie cks[] = request.getCookies();
if(cks!=null){	
	for(int i=0; i<cks.length;i++){
		String key = cks[i].getName();
		String value = URLDecoder.decode(cks[i].getValue());
		out.println("<h2>"+key+" , "+value+"</h2>");
	}
}

%>

<!-- ------------------------------- -->

<%
String name = "최 태식";
name = URLEncoder.encode(name);
//1. create cookie
Cookie ck1 = new Cookie("name",name);
//2. set cookie's age
ck1.setMaxAge(180);
//3. get user
response.addCookie(ck1);

Cookie ck2 = new Cookie("age","20");
ck2.setMaxAge(180);
response.addCookie(ck2);
%>
</body>
</html>