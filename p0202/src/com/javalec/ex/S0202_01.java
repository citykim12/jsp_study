package com.javalec.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S01")
public class S0202_01 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.getRemoteAddr();
       String uri = request.getRequestURI();
       String ctp = request.getContextPath();
       String fileName = uri.substring(ctp.length());
	   if(fileName.equals("/S01")) {
		   System.out.println("S01페이지 이동");
		   System.out.println("a.jsp 페이지로 이동시켜줌.");
	   }else if(fileName.equals("/a.jsp")){
		   
	   }
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
