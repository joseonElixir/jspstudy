<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
</head>
<body>
<%@include file="header.jsp" %>
<section>
	<article>
		<h2>파라미터 확인</h2>
		<fieldset>
			<legend>파라미터 확인</legend>
			<% 
				String name = request.getParameter("name");
				String pwd = request.getParameter("pwd");
				String se = request.getParameter("se");
				String hob[];
				hob= request.getParameterValues("cbs");
				StringBuffer sb = new StringBuffer("");
				if(hob==null||hob.length==0){
					sb.append("선택한 취미가 없습니다.");					
				}else{					
					for(int i=0;i<hob.length;i++){
						if(i+1==hob.length){
							sb.append(hob[i]);
						}else{					
							sb.append(hob[i]+",");
						}
					}
				}
			%>
			<ul>
				<li>넘어온 이름값 : <%=name %></li>
				<li>넘어온 비밀번호 : <%=pwd %></li>
				<li>넘어온 성별 : <%=se %>	</li>		
				<li>넘어온 취미 : <%=sb %></li>		
				
			</ul>
		</fieldset>
	</article>
</section>
<%@include file="footer.jsp" %>
</body>
</html>