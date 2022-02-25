<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="yong.emp.*" %>
 
<jsp:useBean id="edao" class="yong.emp.EmpDAO"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
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
	<legend>모든 사원 내역</legend>
	<table>
		<thead>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>E-Mail</th>
			<th>사원부서</th>
		</tr>
		</thead>
		<tfoot>
		<tr>
			<td colspan = "4">상기 내역은 실시간으로 업데이트 되었습니다.</td>
		</tr>
		</tfoot>
		<tbody>
		<%
		EmpDTO[] dtos=edao.empList();
		if(dtos==null||dtos.length==0){
			%>
			<tr>
				<td colspan="4" align="center">등록된 사원이 없습니다</td>
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