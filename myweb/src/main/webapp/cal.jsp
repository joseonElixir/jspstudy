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
	text-align:center;
}
fieldset {
	width:550px;
	margin:0px auto;
	
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<section>
	<article>
		<h2>사칙 계산기</h2>
		<fieldset>
			<form name="fm" action="cal_ok.jsp">
				
				<input type="text" name="num1"> 
				<select name="cal">
					<option value="+">+</option>
					<option value="-">-</option>
					<option value="*">*</option>
					<option value="/">/</option>
				</select>
				<input type="text" name="num2">= <input type="submit" name="계산" value="계산">
				
			</form>
	</fieldset>
	</article>
</section>
<%@ include file="footer.jsp" %>

</body>
</html>