<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="yong.member.MemberDAO"></jsp:useBean>
<%
String userid = request.getParameter("id");
boolean result = mdao.idCheck(userid);

if(result){
	%>
	<script>
	window.alert('<%=userid%>는 이미 존재합니다.');
	location.href='idCheck.jsp';
	</script>
	<%
}else{
	%>
	<script>
	window.alert('<%=userid%>는 사용 가능합니다');
	opener.document.join.id.value = '<%=userid%>';
	window.self.close();
	</script>
	<%
}
%>