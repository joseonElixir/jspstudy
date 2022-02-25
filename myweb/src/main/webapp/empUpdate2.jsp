<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import ="java.util.*" %>

<jsp:useBean id="edto" class="yong.emp.EmpDTO"></jsp:useBean>
<jsp:setProperty property="*" name="edto"/>
<jsp:useBean id="edao" class="yong.emp.EmpDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>

<%@ include file="header.jsp" %>

<form action="empUpdate_ok.jsp">
	<fieldset>
	<input type="hidden" name="idx" value="">
		<table>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<th>부서명</th>
				<td><input type="text" name="dept"></td>
			</tr>
			<tr>
				<td colspan="2"> <input type="submit" value="수정"><input type="button" value="취소" onclick="can();" >	
			</tr>
		</table>	
	</fieldset>
</form>
</section>
</body>
</html>