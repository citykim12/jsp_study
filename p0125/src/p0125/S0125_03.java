package p0125;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.filters.ExpiresFilter.XHttpServletResponse;

@WebServlet("/S0125_03")
public class S0125_03 extends HttpServlet {
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  //form method="get"
		System.out.println("doGet페이지 호출");
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  //form method="post"
		System.out.println("doPost페이지 호출");
		actionDo(request,response);
	}
	
	protected void actionDo(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		String id = request.getParameter("id");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>Servlet에서 html출력</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>전달된 값</h1>");
		writer.println("<h2>id 값 : "+id+"</h2>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}

}
