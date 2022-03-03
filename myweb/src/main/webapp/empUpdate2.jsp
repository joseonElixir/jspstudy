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
<link rel="stylesheet" type="text/css" href="css/mainLayout.css" >
</head>
<body>
<section>
<%
String idx_s = request.getParameter("idx");
int idx=0;

if(idx_s==null||idx_s.equals("")){
	idx=Integer.parseInt(idx_s);
}else{
	%>
	<script>
	window.alert('존재하지 않는 사원입니다');
	 window.location.href='emp.jsp';
	</script>
	<%
}


%>
<%@ include file="header.jsp" %>

<form action="empUpdate_ok.jsp">
	<fieldset>
	<input type="hidden" name="idx" value="<%=idx %>">
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