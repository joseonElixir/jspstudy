<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="yong.emp.*" %>   
<jsp:useBean id="edto" class="yong.emp.EmpDTO"></jsp:useBean>
<jsp:setProperty property="*" name="edto"/>
<jsp:useBean id="edao" class="yong.emp.EmpDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
<style>
h2{
	text-align:center;
}
table{
	width:550px;
	margin:0px auto;
	border-top: 3px double darkred;
	border-bottom: 3px double darkred;
}
table th{
	background-color: skyblue;
}
table td{
	text-align: center;
}

</style>
</head>
<body>
<%@include file="/header.jsp" %>
<section>
<article>
<fieldset>
	<legend>사원검색 결과</legend>
	<table>
		<thead>
			<tr>
				<th>사원번호</th>
				<th>사원명</th>
				<th>이메일</th>
				<th>부서명</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
			<td colspan="4">DB에서 실시간으로 조회한 결과입니다.</td>
			</tr>
		</tfoot>
		<tbody>
<%
	EmpDTO[] dtos=edao.empSearch(edto);
	if(dtos==null||dtos.length==0){
	
		%>
		<tr>
			<td colspan="4">사원정보가 존재하지 않습니다.</td>
		</tr>
		<%
	}else{
		for(int i=0;i<dtos.length;i++){
				EmpDTO dto=dtos[i];
			%>
				<tr>
					<td><%=dto.getIdx() %></td>
					<td><%=dto.getName() %></td>
					<td><%=dto.getEmail() %></td>
					<td><%=dto.getDept() %></td>
				</tr>
			<%	
			}
	}

%>
		</tbody>
	</table>
</fieldset>
</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>