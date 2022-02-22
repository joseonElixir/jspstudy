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
fieldset li{
	list-style-type: none;		 
}
fieldset label{
	width : 80px; /*한 블럭을 차지하고 있는 아이템에 한하여 크기를 지정할 수 있다.*/ 
	float: left;
	
}
fieldset div{
	text-align: center;
}


</style>
</head>
<body>
<%@ include file="header.jsp" %>
<section>
	<article>
	<h2>formTest Page</h2>
	<form name="fm" action="formTest_ok.jsp">
	<fieldset>
		<legend>사용자 정보 입력</legend>
		<ul>
		<li><label>이름</label>
		<input type="text" name="name"></li>
		<li><label>비밀번호</label>
		<input type="password" name ="pwd"></li>
		<li><label>성별</label>
		<input type="radio" name="se" value="남자">남자
		<input type="radio" name="se" value="여자">여자
		<input type="radio" name="se" value="기타">기타</li>
		<li><label>취미</label>
		<input type="checkbox" name="cbs" value="공부">공부
		<input type="checkbox" name="cbs" value="독서">독서
		<input type="checkbox" name="cbs" value="게임">게임
		<input type="checkbox" name="cbs" value="운동">운동
		<input type="checkbox" name="cbs" value="수면">수면</li>
		</ul>
		<div>
		<input type="submit" value="전달">
		<input type="reset" value="재작성">
		</div>
	</fieldset>
	</form>
	</article>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>