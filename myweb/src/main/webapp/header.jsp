<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
 function login(){
	 window.open('/myweb/member/login.jsp','login','width=400,height=300, top=150,left=300');
 }
 function join(){
	 window.location.href="/myweb/member/memberJoin.jsp";
 }

</script>
<header>
<%
 	String sname = (String)session.getAttribute("name");
	System.out.println("login : name = "+sname);

if(sname!=null){
	%>
	<div><%=sname %> 님, 환영합니다. | <a href="/myweb/member/logout_ok.jsp">로그아웃</a></div>
<%
}else{
	%>
	<div><input type="button" value="로그인" onclick="login();">  <input type="button" value="회원가입" onclick="join();"></div>	
	<% 
}

%>
	<h1>JSP Study Site</h1>
	<nav>
	<ul>
		<li><a href="/myweb">Home</a></li>
		<li><a href="#">profile</a></li>
		<li><a href="/myweb/userphoto/photoList.jsp">PhotoBook</a></li>
		<li><a href="#">BBS</a></li>
		<li><a href="#">GuestBook</a></li>
	</ul>
	</nav>
	<hr>
</header>