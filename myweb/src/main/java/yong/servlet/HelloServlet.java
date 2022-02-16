package yong.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;

public class HelloServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// HttpServletRequest req : 요청객체
		// HttpServletResponse resp : 응답객체
		userProcess(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		userProcess(req, resp);

	}
	//홈페이지에서 get or post로 요청할때 한곳으로 직결시킬 수 있는 메소드.
	protected void userProcess(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		//브라우저가 어떤 문서로 인식할지 지정.
		resp.setContentType("text/html;charset=utf-8");
		
		//브라우저에 글자를 쓰기 위한 스트림 할당.
		PrintWriter pw = resp.getWriter();
		
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<title>이것은 서블릿 입니다.</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h1>이것은 첫 servlet 입니다.</h1>");
		Calendar now = Calendar.getInstance();
		int y = now.get(Calendar.YEAR);
		int m = now.get(Calendar.MONTH)+1;
		int d = now.get(Calendar.DATE);
		pw.println("<h2>"+y+"년 "+m+"월 "+d+"일</h2>");
		pw.println("</body>");
		pw.println("</html>");
		
		pw.close();
		
	}

}
