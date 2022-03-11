<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="mdto" class="yong.member.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="mdto"/>
    <jsp:useBean id="mdao" class="yong.member.MemberDAO"></jsp:useBean>
<%
String idsave = request.getParameter("idsave");
String id= request.getParameter("id");


int res = mdao.loginCheck(mdto.getId(), mdto.getPwd());
	session.setAttribute("name", mdao.UserInfo(mdto.getId()));
	session.setAttribute("id", mdao.UserInfo(mdto.getId()));
if(res==mdao.LOGIN_OK){
	%>
	<script>
	window.alert('로그인 성공');
	opener.location.reload();
	window.self.close();
	</script>
	<%
	if(idsave!=null&&idsave.equals("on")){
		//session.setAttribute("id", id); //세션으로 아이디저장을 하면 안되는 이유 : 페이지를 빠져나오면 데이터가 사라짐.
		//
		Cookie idck= new Cookie("idsave",id);//쿠키로 아이디 저장
		idck.setMaxAge(60);
		response.addCookie(idck);
		//
	}else{
		//session.removeAttribute("id");
		Cookie idck= new Cookie("idsave",id);
		idck.setMaxAge(0);
		response.addCookie(idck);
	}
	
	
}else{
%>
<script>
window.alert('로그인 실패');
window.location.href="login.jsp";
</script>
<%	
	
}
%>

