<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
<section>
<article>
	<h2>회원 사진 업로드창</h2>
		<form action="photoUpload_ok.jsp" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>사진올리기</legend>
				<ul>
					<li>파일선택 : <input type="file" name="upload"></li>
				</ul>
				<div>
					<input type="submit" value="사진올리기">
				</div>
			</fieldset>
		</form>
</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>