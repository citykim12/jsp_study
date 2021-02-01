package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S0201_04")
public class S0201_04 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String id = getServletContext().getInitParameter("all_id");
		String pw = getServletContext().getInitParameter("all_pw");
		
		System.out.println("ServletContext id: "+id);
		System.out.println("Servletcontext pw: "+pw);
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head></head><body>");
		out.println("<h2>all id : "+ id  +"</h2>");
		out.println("<h2>all pw : "+ pw  +"</h2>");
		out.println("</body></html>");
		out.close();
		
		
		
	}

}
