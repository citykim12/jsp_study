package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/SA_03"},initParams={@WebInitParam(name="name",value="유관순"),@WebInitParam(name="gender",value="여성") })
public class S0201_03 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String all_tel = getServletContext().getInitParameter("all_tel");
		String all_name = getServletContext().getInitParameter("all_name");
		String all_fruit = getServletContext().getInitParameter("all_fruit");
		
		System.out.println("all_tel : "+all_tel);
		System.out.println("all_name : "+all_name);
		System.out.println("all_fruit : "+all_fruit);
		
		
		String name = getInitParameter("name");
		String gender = getInitParameter("gender");
		
		System.out.println(name);
		System.out.println(gender);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head></head><body>");
		out.println("<h2>name : "+ name    +"</h2>");
		out.println("<h2>gender : "+ gender    +"</h2>");
		out.println("</body></html>");
		out.close();
		
	}

}
