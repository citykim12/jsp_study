package com.javalec.ex;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request,response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI(); // p0224/join.do
		System.out.println(uri);
		String contextPath = request.getContextPath();  // p0224
		String command = uri.substring(contextPath.length()); // /join.do
		
		if(command.equals("/memberList.do")) {
			Service service = new MemberSelectAllService();
			ArrayList<Member3Dto> list = service.execute(request, response);
			HttpSession session = request.getSession();
			session.setAttribute("list", list);
			response.sendRedirect("memberList.jsp");
		}
		
	}

}
