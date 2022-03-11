<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<jsp:useBean id="wfs" class="yong.wf.WebFolderService" scope="session"></jsp:useBean>

<%
	
	String savepath = wfs.USERS_HOME+"/"+wfs.getCrpath();
try{
	MultipartRequest mr = 
		new MultipartRequest(request, savepath,wfs.getFreeSize(),"utf-8");

}catch(Exception e){
	out.println("업로드 예외 발생");
	
}

%>
<script>
window.alert('파일올리기 완료!');
opener.location.href='webFolder.jsp?cp=<%=wfs.getCrpath()%>';
window.self.close();
</script>