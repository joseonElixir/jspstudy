<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String id = (String)session.getAttribute("id");
String check= "";
if(id==null){
	System.out.println("id : "+id);
	id="";
}else{	
	System.out.println("id : "+id);
	check="checked='checked'";
}
%>
<style>
li{
	list-style-type:none;
}
label{
	width : 80px;
	float : left;
}
div{
	text-align : right;
}
</style>
</head>
<%
//쿠키를 통해 아이디 저장.
Cookie [] arr = request.getCookies();
String idsave="";
if(arr!=null){
	for(int i=0;i<arr.length;i++){
		if(arr[i].getName().equals("idsave")){
			idsave=arr[i].getValue();
		}
	}
	
}
	
%>
<body>
<fieldset>
<legend>로그인</legend>
<form action="login_ok.jsp">
<ul>
<li><label>id :</label> <input type="text" name="id" value="<%=/*id*/ idsave %>"></li>
<li><label>pw :</label> <input type="password" name="pwd"></li>
</ul>
<div><input type="checkbox" name="idsave" <%=/*check*/idsave.equals("")?"":"checked" %>>ID저장  
<input type="submit" value="로그인"></div>
</form>
</fieldset>
</body>
</html>