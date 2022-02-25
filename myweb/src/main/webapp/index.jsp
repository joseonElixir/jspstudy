<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
	<!-- 스타일시트 파일 불러오기(연결하기). -->

</head>
<body>

<%@include file="header.jsp" %>
	<!-- 헤더파일 불러오기(붙여넣기) -->

<section>
	<article id="mainImg">
		<img src="img/main.jpg" alt="털바퀴">
	</article>
	<article id="mainMenu">
		<h2>아래에 메뉴가 추가됨.</h2>
		<ul>
			<li>여기에 계속 추가될 것임.</li>
			<li><a href="formTest.jsp">폼테스트</a></li>
			<li><a href="cal.jsp">계산기</a></li>
			<li><a href="emp.jsp">사원관리 프로그램(기본개발패턴)</a></li>
			<li><a href="emp2.jsp">사원관리프로그램(Beans적용)</a></li>
		</ul>
	</article>
</section>

<%@include file="footer.jsp" %>
	<!-- footer 파일 불러오기. -->

</body>
</html>