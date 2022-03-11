<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.oreilly.servlet.*"%>
<jsp:useBean id="pdao" class="yong.photo.PhotoDAO" scope="session"></jsp:useBean>

<%
String savepath="D:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\myweb\\userphoto\\photos";
MultipartRequest mr = new MultipartRequest(request,savepath,10485760,"utf-8");
String userid = (String)session.getAttribute("id");
String filename1 = mr.getFilesystemName("upload");
String filename2 = mr.getOriginalFileName("upload");
int res = pdao.photoInsert(userid, filename1,filename2);
System.out.println(userid+" / " + filename1 +" / "+ filename2);
%>
<script>
window.alert('업로드 완료');
location.href="photoList.jsp";
</script>