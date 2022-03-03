<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="yong.member.*" %>
<jsp:useBean id="mdao" class="yong.member.MemberDAO"></jsp:useBean>
<%
request.setCharacterEncoding("utf-8");
String fKey = request.getParameter("fKey");
String fValue = request.getParameter("fValue");
ArrayList<MemberDTO> arr = mdao.memberFind(fKey, fValue);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
margin : 0px auto;

}
</style>
</head>
<body>
<table width="550" border="2">
  <thead>
  <tr>
    <th>회원번호</th>
    <th>아이디</th>
    <th>회원이름</th>
    <th>E-mail</th>
    <th>주소</th>
    <th>가입날짜</th>
   </tr>
  </thead>
  <tbody>
  <%
  if(arr==null||arr.size()==0){
  %>
  <tr>
    <td colspan="5" align="center">
    검색된 회원이 없습니다.
    </td>
  </tr>
  <%}else{ 
  		for(int i=0;i<arr.size();i++){
  			MemberDTO dto=arr.get(i);
  %>
			<tr>
			    <td><%=dto.getIdx() %></td>
			    <td><%= dto.getId() %></td>
			    <td><%= dto.getName() %></td>
			    <td><%=dto.getEmail() %></td>
			    <td><%=dto.getAddr() %></td>
			    <td><%=dto.getJoindate() %></td>
			</tr>
<%
		}
  	} 
 %>
  </tbody>
</table>
</body>
</html>




















