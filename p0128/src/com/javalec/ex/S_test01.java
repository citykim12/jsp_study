package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/S_test01")
public class S_test01 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request,response);
		// web.xml -> St01
		// html h2-> St01이라고 출력하시오.
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request,response);
	}
	
	protected void actionDo(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		System.out.println("actionDo");
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<body>");
		writer.println("<h2>St01호출</h2>");
		writer.println("<h3>id : "+ id +"</h3>");
		writer.println("<h3>name : "+ name +"</h3>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}
	

}
