<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
</head>
<body>
<%@include file="header.jsp" %>
<section>
	<article>
	 	<h2>계산결과</h2>
	 	<fieldset>
	 		<legend>계산결과</legend>
	 		<%
			 String num1_s=request.getParameter("num1");
			 String num2_s=request.getParameter("num2");
			 int num1 = Integer.parseInt(num1_s);
			 int num2 = Integer.parseInt(num2_s);
			 String oper= request.getParameter("cal");
			 
			 int res=0;
			 res=oper.equals("+")?num1+num2:
				 oper.equals("-")?num1-num2:
				 oper.equals("*")?num1*num2:num1/num2;
	 		%>
	 		<h3><%=num1 %><%=oper %><%=num2 %>=<%=res %></h3>
	 	</fieldset>
	</article>
</section>
<%@include file="footer.jsp" %>
</body>
</html>