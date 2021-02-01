package com.javalec.ex;

import java.io.IOException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebListener
@WebServlet("/SS_05")
public class S0201_05 extends HttpServlet implements ServletContextListener{


	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("Servlet생성시 실행되는 메소드입니다.");
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("Servlet해제시 실행되는 메소드입니다.");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("init()메소드 실행");
	}
	
	@Override
	public void destroy() {
		System.out.println("destory()메소드 실행");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		
	}
}
