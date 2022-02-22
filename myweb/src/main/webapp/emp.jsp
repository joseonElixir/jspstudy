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
fieldset{
	width:500px;
	margin:0px auto;
}
fieldset table{
	border-top : 3px double darkred;
	border-bottom :3px double darkred;
	width : 400px;
	margin:0px auto;
	
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<section>
	<article>
		<h2>사원관리프로그램(기본개발)</h2>
		<form name="empAdd" action="empAdd_ok.jsp">
		<fieldset>
			<legend>사원등록</legend>
			<table>
				<tr>
					<th>사원이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>E-mail</th>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<th>부서명</th>
					<td><input type="text" name="dept"></td>
				</tr>
				<tr>
					
					<td colspan="2" align="center">
						<input type="submit" value="사원등록">
						<input type="reset" value="다시작성">					
					</td>
				</tr>
			</table>
		</fieldset>
		</form>
	</article>
	<article>
	<form name="empDel" action="empDel_ok.jsp">
	<fieldset>
		<legend>사원 퇴사</legend>
		<table>
			<tr>
				<th>사원명</th>
				<td><input type="text" name="name"></td>
				<td><input type="submit" value="퇴사"></td>
			</tr>
		</table>
	</fieldset>
	</form>
	</article>
	<article>
	<form name="empSearch" action="empSearch.jsp">
	<fieldset>
		<legend>사원 검색</legend>	
		<table>
			<tr>
				<th>사원명</th>
				<td><input type="text" name="name"></td>
				<td><input type="submit" value="검색"></td>
			</tr>
		</table>
	</fieldset>
	</form>
	</article>
	<article>
	<form name="empUpdate" action="empUpdate.jsp">
	<fieldset>
		<legend>사원 정보 수정</legend>
		<table>
			<tr>
			<th>사원번호</th>
			<td><input type="text" name="idx"></td>
			<td><input type="submit" value="수정"></td>
			</tr>
		</table>
	</fieldset>
	</form>
	</article>
	<article>
		<fieldset>
			<legend>모든사원내역</legend>
			<h3><a href="empList.jsp">모든 사원 내역보기</a></h3>
		</fieldset>
	</article>
	
</section>
<%@include file="footer.jsp" %>
</body>
</html>