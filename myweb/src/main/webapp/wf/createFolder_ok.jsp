<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<jsp:useBean id="wfs" class="yong.wf.WebFolderService" scope="session"></jsp:useBean>

<%

String foldername = request.getParameter("foldername");
	System.out.println("foldername LL: "+foldername);
	wfs.createFolder(foldername);

%>


<script>
window.alert('폴더생성 완료!');
opener.location.href='webFolder.jsp?cp=<%=wfs.getCrpath()%>';
window.self.close();
</script>