<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>scopeTest.jsp</h1>
<jsp:useBean id="stest" class="yong.scope.ScopeTest" scope="application"></jsp:useBean>
<jsp:setProperty property="count" name="stest"/>
<h2 style="color: blue;">count : <%=stest.getCount() %></h2>
<a href="scopeTest_ok.jsp">다음으로.</a>
</body>
</html>