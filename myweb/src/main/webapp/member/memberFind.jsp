<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
<style>
h2 , h3{
text-align: center;
}
fieldset{
width:450px;
text-align: center;
margin:0px auto;
}
fieldset select{
 width:120px;
}
</style>
<script>

</script>
</head>
<body>
<%@include file="/header.jsp" %>
<section>
  <article>
  <h2>회원검색</h2>
    <form name="memberFind" action="memberFind.jsp" method="post" >
  <fieldset>
    <legend>회원검색</legend>
    <select name="fKey">
      <option value="id">아이디</option>
      <option value="name">이름</option>
    </select>
    <input type="text" name="fValue" id="box">
    <input type="submit" value="검색">
  </fieldset>
    </form>
  </article>
  <hr>
  <%
  if(request.getMethod().equals("GET")){
	  %>
  	<h3>위 검색란에 검색어를 입력하시오</h3>
	  <% 
  }else{
	  %>
	<jsp:include page="result.jsp"></jsp:include>
	  <%
  }
  %>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>