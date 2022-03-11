<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
String sname1 = (String)session.getAttribute("name");
String sid = (String)session.getAttribute("id");
if(sname1==null){
	%>
	<script>
	window.alert("로그인 후 이용가능.");
	location.href="/myweb";
	</script>
	<%
	return;
}
%>