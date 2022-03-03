<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String st1= request.getParameter("chx");
System.out.println("st1 : "+st1);
	System.out.println("시간 : "+System.currentTimeMillis());
	
	long  day = 1000*60*60*24;
	long res = day - System.currentTimeMillis();
	
	System.out.println("결과 : "+res);
if(st1!=null){
	Cookie ck1 = new Cookie("pop","up");
	ck1.setMaxAge((int)res/1000);
	response.addCookie(ck1);
	System.out.println("입력 확인");
}else{
	System.out.println("불발");
}

%>
<script>
window.self.close();
</script>