<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>requestTest.jsp</h1>
<h2>사용자 ip :<%=request.getRemoteAddr() %></h2>
<h2>사용자 port number :<%=request.getRemotePort() %></h2>
<h2>사용자 접속 방식 : <%=request.getMethod() %></h2>
<h2>서버 이름 : <%=request.getServerName() %></h2>
<h2>서버 port num : <%=request.getServerPort() %></h2>
<h2>프로토콜 방식 : <%=request.getProtocol() %></h2>
<h2>현재 접속 페이지 : <%=request.getRequestURI() %></h2>
<h2>현재 프로젝트 이름 : <%=request.getContextPath() %></h2>
</body>
</html>