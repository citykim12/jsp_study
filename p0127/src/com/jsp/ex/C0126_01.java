package com.jsp.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/C01")
public class C0126_01 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request,response);
	}
	
	protected void actionDo(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>데이터</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>폼 데이터 값 </h1>");
		writer.println("<h2>id : "+id +"</h2>");
		writer.println("<h2>pw : "+pw +"</h2>");
		writer.println("<h2>name : "+name +"</h2>");
		writer.println("<h2>tel : "+tel +"</h2>");
		writer.println("<h2>gender : "+gender +"</h2>");
		writer.println("<h2>hobby : ");
		for(String i:hobby) {
			writer.println(i+" ");
		}
		writer.println("</h2>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
		
	}

}
