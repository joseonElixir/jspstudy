<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.util.*" %>
   <%@page import="yong.photo.*" %>
  <jsp:useBean id="pdao" class="yong.photo.PhotoDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
<style>
section{
	width : 600px;
	text-align: center;
	margin: 0px auto;
}
table{
	margin: 0px auto;
	width : 600px;
	border : 3px double red;
}
thead{
	background-color: red;
}
tfoot{
	border : 3px solid red;
	background-color: skyblue;
}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
<section>
<article>
	<table>
		<thead>
			<tr>
				<th colspan="5">다운로드 파일 리스트</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				
				<td colspan="5"><a href="photoUpload.jsp">사진 올리기</a></td>
			</tr>
		</tfoot>
		<tbody>
			<%
			ArrayList<PhotoDTO> arr = pdao.photoList();
			
			if(arr==null|| arr.size()==0){
				%>
				<tr>
				<td colspan="5" align="center">등록된 자료가 없습니다</td>
				</tr>
				<%
			}else{
				for(int i=0;i<arr.size();i++){
				out.println("<tr>");
				out.println("<td>no."+(i+1)+"</td>");
					out.println("<td colspan='4'>");
					out.println("<a href='/myweb/userphoto/photos/"+arr.get(i).getFilename1()+"' download>"+arr.get(i).getFilename1()+"</a>");
					out.println("</td>");					
				out.println("</tr>");
				}
			}
			
			%>
		</tbody>
	</table>
</article>

</section>
<%@include file="/footer.jsp" %>
</body>
</html>