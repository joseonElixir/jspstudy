<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.*;"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>하이</h3>
<%
//서비스 메소드 영역 (지역변수)

out.print("<h3>하이</h3>");
System.out.println("하이");
%>
<%!
//클래스 영역(멤버 변수 및 메소드)
String str = "java";
	public int getSum(int a,int b){
		int c = a+b;
		return c;
	}
%>
<h3>3+5=<%=getSum(3,5) %></h3>

<%
Calendar  now = Calendar.getInstance();
int y = now.get(Calendar.YEAR);
int m = now.get(Calendar.MONTH)+1;
int d = now.get(Calendar.DATE);
out.print("<h3>"+y+"년 "+m+"월 "+"일</h3>");

%>

</body>
</html>