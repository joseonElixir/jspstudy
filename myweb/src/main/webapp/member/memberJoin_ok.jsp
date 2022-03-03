<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8"); //post 타입에서 재 인코딩하는 방식.
%>
<jsp:useBean id="mdto" class="yong.member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="mdto"/>
<jsp:useBean id="mdao" class="yong.member.MemberDAO"></jsp:useBean>
<%
int result= mdao.memberJoin(mdto);

String msg=result>0?"회원가입 성공":"회원가입 실패";

%>
<script>
window.alert('<%=msg%>');
location.href="memberJoin.jsp";
</script>