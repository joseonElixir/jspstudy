<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="edto" class="yong.emp.EmpDTO"></jsp:useBean>
<jsp:setProperty property="*" name="edto"/>
<jsp:useBean id="edao" class="yong.emp.EmpDAO"></jsp:useBean>
<% 
int result = edao.empDel(edto);
String msg = result>0?"퇴사처리완료":"퇴사처리 실패";
%>

<script>
window.alert('<%=msg%>');
location.href="emp2.jsp";

</script>