package com.javalec.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S03")
public class S0128_03 extends HttpServlet {
	
	//어노테이션
	@PostConstruct
	private void iPostCon() {
		System.out.println("servlet 생성시 딱 1번 PostConstruct 호출");
	}
	
	@PreDestroy
	private void dPreDes() {
		System.out.println("servlet 해제시 딱 1번 destoryPreDestory 호출");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("init()는 Servlet호출시 딱 1번 실행됨.");
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");  //로딩시 매번 실행
		C0128_01 c = new C0128_01();
		try {
			c.fileSave(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
	}
	
	@Override
	public void destroy() {
		System.out.println("servlet해제시 딱 1번 실행");
	}

}
