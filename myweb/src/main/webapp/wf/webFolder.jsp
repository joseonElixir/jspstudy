<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<jsp:useBean id="wfs" class="yong.wf.WebFolderService" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
<style>
h2{
	text-align: center;
	color : blue;
}
fieldset{
	width : 550px;
	margin : 0px auto;
}
fieldset label{
	width : 80px;
	float:left;
}
fieldset table{
	width : 550px;
	margin : 0px auto;
}
fieldset table th{
	background-color: skyblue;
}
meter{
	width : 250px;
}
</style>
<script>
function uploadOpen(){
	window.open('upload.jsp','upload','width=350, height=250');
}
function creatFolder(){
	window.open('createFolder.jsp','createFolder','width=350, height=250');
}
</script>
</head>
<%@include file = "/loginCheckModule/loginCheckModule.jsp" %>

<%
	wfs.deletef(wfs.USERS_HOME+"/"+request.getParameter("del"));
	wfs.setUser(sid);
	wfs.settingUserFolder();
	String cp = request.getParameter("cp");
	if(request.getParameter("del")!=null){
		cp=request.getParameter("del");
		int num= cp.lastIndexOf("/");
		cp = cp.substring(0,num);
	}
	
	System.out.println("cp : "+cp);
	
	if(cp==null||cp.equals("")){
		cp=wfs.getUser();
	}
	wfs.setCrpath(cp);
%>
<script>
function delfunc(){
	if(window.confirm('삭제하시겠습니까?')){
		return true;
	}else{
		return false;
	}
}
</script>
<body>
<%@include file="/header.jsp" %>
<section>
	<article>
	<h2>~님의 Y드라이브</h2>
	<fieldset>
		<legend>기본정보</legend>
		<ul>
			<li><label>총 용량</label>
			<meter min="0" max="<%=wfs.getTotalSize() %>" value="<%=wfs.getTotalSize() %>"></meter>(<%=wfs.getTotalSize() %>) byte</li>
			<li><label>사용 용량</label>
			<meter min="0" max="<%=wfs.getTotalSize() %>" value="<%=wfs.getUsedSize() %>"></meter> (<%=wfs.getUsedSize() %>) byte</li>
			<li><label>남은 용량</label>
			<meter min="0" max="<%=wfs.getTotalSize() %>" value="<%=wfs.getFreeSize() %>"></meter>(<%=wfs.getFreeSize()%>) byte</li>
		</ul>
	</fieldset>
	</article>
	<article>
		<fieldset>
			<input type="button" value="파일올리기" onclick="uploadOpen()">
			<input type="button" value="폴더올리기" onclick="creatFolder()">	
		</fieldset>
		<fieldset>
			<legend>탐색기</legend>
			<table>
				<thead>
					<tr>
						<th>구분</th>
						<th>파일 및 폴더명</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
				<%
				if(!wfs.getCrpath().equals(wfs.getUser())){
					int in = wfs.getCrpath().lastIndexOf("/");
					String upcp = wfs.getCrpath().substring(0,in);
					%>
						 <tr>
						 	<td colspan="3" align="left">
						 		<a href="webFolder.jsp?cp=<%=upcp%>">상위로...</a>
						 	</td>
						 </tr>
					<%
				}
				%>
				<!-- ----- -->
				<%
					File f = new File(wfs.USERS_HOME+"/"+wfs.crpath);
					System.out.println(wfs.USERS_HOME+"/"+wfs.crpath);
					File files[] = f.listFiles();
					if(files==null||files.length==0){
						%>
						<tr>
						<td colspan="3" align="center"> 등록된 파일 및 폴더가 없습니다.</td>
						</tr>						

						<% 
					}else{
						for(int i=0;i<files.length;i++){
							File temp = files[i];
							%>
							<tr>
							<td><%=temp.isFile()?"[FILE]":"[DIR]" %></td>
							<td>
							<%
							if(temp.isFile()){
								%>
								<a href="/myweb/wf/users/<%=wfs.getCrpath() %>/<%=temp.getName()%>" download><%=temp.getName()%></a>
								<%
							}else{
								%> 
								<a href="webFolder.jsp?cp=<%=wfs.getCrpath()%>/<%=temp.getName()%>"><%=temp.getName()%></a>
								<%
								
							}
							//href를 통해 파라미터를 넘기고, 해당 파라미터를 인자값으로 받는 delete 메소드를 상단에 수행.
							//삭제 버튼이 눌리지 않을 경우에 넘어거는 파라미터가 없기 때문에 삭제가 실행되지 않고,
							//삭제 버튼이 눌린 후에 인자값이 넘어간 상황에서 새로고침 등의 행위가 이루어질 경우
							//이미 해당 주소값은 삭제되었기 때문에 찾을 수 없는 주소값이 되어 수행되지 않는다.
							//delete 메소드의 경우는 file의 경우는 바로 삭제, dir의 경우는 하위 목록의 모든 파일을 삭제.
							//하위 폴더가 전부 빌 때까지 while(폴더.exists()) + 재귀함수.
							//if 파일 -> 삭제, else 폴더 -> while(exists()) for 재귀함수 -> 빈폴더 삭제   
							//a태그에 href 속성과 onclick 속성을 동시에 넣고 function에서 false를 반환하면 href가 실행되지 않는다.
							//즉, <a href="참조값" onclick="return 펑션"> 일때, 펑션에서 false를 반환 시 해당 태그(href)가 수행되지 않음.
							%>
							</td>
							<td><a href="webFolder.jsp?del=<%=wfs.getCrpath()%>/<%=temp.getName()%>" onclick="return delfunc()">삭제</a></td>
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