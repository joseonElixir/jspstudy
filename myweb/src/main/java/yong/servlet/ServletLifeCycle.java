package yong.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletLifeCycle extends HttpServlet{

		int count;
		public ServletLifeCycle() {
			//멤버변수의 초기화
			System.out.println("1) 생성자 호출됨.");
			count=0;
		}
		
		@Override
		public void init() throws ServletException {
			//기능의 초기화
			System.out.println("2) init()메소드 호출됨.");
		}
		
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			count++;
			resp.setContentType("text/html;charset=utf-8");
			PrintWriter pw = resp.getWriter();
			
			pw.println("<html><head><title>");
			pw.println("서비스 라이프 사이클 </title></head><body>");
			pw.println(count+"번째 접속중");
			pw.println("</body></html>");
			pw.close();
			System.out.println("3)service메소드 수행됨");
		}
		@Override
		public void destroy() {
			System.out.println("destroy() 메소드 수행됨");
		}
		
		
}
