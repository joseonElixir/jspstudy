<%@page import="yong.cookiemodule.CookieModule"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
	<!-- 스타일시트 파일 불러오기(연결하기). -->
	<%
		boolean popkey= true;
		Cookie cks1[] = request.getCookies();
		for(int i=0;i<cks1.length;i++){
			if(cks1[i].getName().equals("pop")){
 					popkey= false;
			}
		}
		if(popkey){	
				%>
				<script>
					window.open('pop1.jsp','pop1','width=400,height=300, top=150,left=300');
				</script>
				<%
		}
	%>
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
		<%
		
		Cookie cks[] = request.getCookies();
			String value="첫 방문을 환영합니다.";
		if(cks!=null){
			String key="";
				
				for(int i=0;i<cks.length;i++){
					key = cks[i].getName();
					if(key.equals("last")){ 
						value= "마지막 접속일 : " + URLDecoder.decode(cks[i].getValue());
					}
					
				}
			out.print("<h2>"+value+" </h2>");
			
		}
		/*
		 String lastDay = CookieModule.getCookie("lastDay", request);
		lastDay = lastDay==null?"첫 방문을 환영합니다.":URLDecoder.decode(lastDay);
		String popupck=CookieModule.getCookie("popup", request);
		out.print("<h2>"+popupck+" </h2>");
		*/
		
		Calendar today = Calendar.getInstance();
		int year = today.get(Calendar.YEAR);
        int month = today.get(Calendar.MONTH)+1;
        int date = today.get(Calendar.DATE);
        String today_s = (year+"년 "+month+"월 "+date+"일");
        today_s = URLEncoder.encode(today_s);
       // CookieModule.setCookie("lastDay", today_s, 60*60*24*30, response);
		
		Cookie ck1 = new Cookie("last",today_s);
		ck1.setMaxAge(10);
		response.addCookie(ck1);
	
		%>
		<ul>
			<li>여기에 계속 추가될 것임.</li>
			<li><a href="formTest.jsp">폼테스트</a></li>
			<li><a href="cal.jsp">계산기</a></li>
			<li><a href="emp.jsp">사원관리 프로그램(기본개발패턴)</a></li>
			<li><a href="emp2.jsp">사원관리프로그램(Beans적용)</a></li>
			<li><a href="member/memberFind.jsp">회원검색</a></li>
		</ul>
	</article>
</section>

<%@include file="footer.jsp" %>
	<!-- footer 파일 불러오기. -->

</body>
</html>