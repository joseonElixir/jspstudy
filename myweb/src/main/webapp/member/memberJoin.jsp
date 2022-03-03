<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/mainLayout.css">
<style>
h2{
	text-align: center;
}
fieldset {
	width: 550px;
	margin: 0px auto;
}
fieldset li{
	list-style-type: none;
}
fieldset label {
	width: 80px;
	float: left;
}
fieldset div {
	text-align: center;
}

</style>
<script>
function openIdCheck(){
	window.open('idCheck.jsp','idCheck','width=400,height=300, top=150,left=300');
	
}
</script>
</head>
<body>
<%@include file="../header.jsp" %>
<section>
	<article>
	<h2>회원가입</h2>
	<form name="join" action="memberJoin_ok.jsp" method="post">
		<fieldset>
			<legend>회원가입</legend>
			<ul>
				<li><label>아이디</label>
				<input type="text" name="id" readonly="readonly">
				<input type="button" value="중복검사" onclick="openIdCheck()">
				</li>
				<li><label>이름</label>
				<input type="text" name="name"></li>
				<li><label>비밀번호</label>
				<input type="password" name="pwd"></li>
				<li><label>E-Mail</label>
				<input type="text" name="email"></li>
				<li><label>주소</label>
				<input type="text" name="addr"></li>
				<li><label>전화번호</label>
				<input type="text" name="tel"></li>
				</ul>
				<div>
				<input type="submit" value="회원가입"><input type="reset" value="재작성">
				</div>
		</fieldset>
	</form>
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>