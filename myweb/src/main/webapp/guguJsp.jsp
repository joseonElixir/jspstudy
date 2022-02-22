<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>jsp로 만든 구구단</h1>
 <table border="1" width="550" >
 <% 
 out.println("<h3>제목 받아라</h3>");
 System.out.println("JSP파일에서 실행된 시스아웃");
 for(int i=1;i<10;i++){
	out.print("<tr>");
	 for(int j=2;j<10;j++){
		 out.print("<td>"+j+"*"+i+"="+(i*j)+"</td>");
	 }
	out.print("</tr>");
 }
 %>
 </table>
</body>
</html>