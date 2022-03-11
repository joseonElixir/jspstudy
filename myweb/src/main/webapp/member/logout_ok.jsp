<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//session.removeAttribute("name");
session.invalidate(); // 세션 정보 초기화.
//response.sendRedirect("/myweb"); //자바스크립트의 하이퍼레퍼런스 기능과 같음.
%>
<script>
window.alert('로그아웃되었습니다');
window.location.href="/myweb/";
</script>