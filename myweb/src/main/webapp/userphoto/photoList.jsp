<%@page import="yong.photo.PhotoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="yong.photo.*" %>
 <jsp:useBean id="pdao" class="yong.photo.PhotoDAO" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
<style>
h2{
	text-align: center;
	
}
table{
	width : 600px;
	margin: 0px auto;
	border-top: 3px double red;
	border-bottom: 3px double red;
}
table thead th{
	background-color: pink;
	text-align: center;
}
.tdline{
	text-align: center;
}
img{
	width :150px;
	height: 150px;
}
</style>
</head>
<%@include file = "/loginCheckModule/loginCheckModule.jsp" %>
<body>
<%@include file="/header.jsp" %>
<section>
<article>
	<table>
		<thead>
			<tr>
				<th colspan="5">회원들 사진 목록</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="4" class="tdline"></td>
				<td class="tdline"><a href="photoUpload.jsp">사진 올리기</a></td>
			</tr>
		</tfoot>
		<tbody>
			<%
			ArrayList<PhotoDTO> arr = pdao.photoList();
			
			if(arr==null|| arr.size()==0){
				%>
				<tr>
				<td colspan="5" align="center">등록된 사진이 없습니다</td>
				</tr>
				<%
			}else{
				out.println("<tr>");
				for(int i=0;i<arr.size();i++){
					out.println("<td>");
					out.println("<img src='/myweb/userphoto/photos/"+arr.get(i).getFilename1()+"'>");
					out.println("</td>");
					if((i+1)%5==0){
				out.println("</tr>");
				out.println("<tr>");
						
					}
				}
				out.println("</tr>");
			}
			
			%>
		</tbody>
	</table>
</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>