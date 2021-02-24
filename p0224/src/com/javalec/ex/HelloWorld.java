package com.javalec.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class HelloWorld extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request,response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		String uri = request.getRequestURI(); // p0224/join.do
		System.out.println(uri);
		String contextPath = request.getContextPath();  // p0224
		System.out.println(contextPath);
		String command = uri.substring(contextPath.length()); // /join.do
		System.out.println(command);
		
		if(command.equals("/login.do")) {
			System.out.println("/login.do페이지를 호출하였습니다.");
		}else if(command.equals("/join.do")) {
			System.out.println("/join.do페이지를 호출하였습니다.");
		}else if(command.equals("/memberList.do")) {
			System.out.println("/memberList.do페이지를 호출하였습니다.");
		}else if(command.equals("/modify.do")) {
			System.out.println("/modify.do페이지를 호출하였습니다.");
		}else if(command.equals("/logout.do")) {
			System.out.println("/logout.do페이지를 호출하였습니다.");
		}
		
	}
}
