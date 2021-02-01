package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S_01")
public class S0201_01 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//데이터를 콘솔에서 출력, html에서 출력을 하시오.
		// id=aaa name=홍길동 gender=남성 hobby=달리기 hobby=수영 fruit=사과
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String fruit = request.getParameter("fruit");
		
		Enumeration e = request.getParameterNames();
		while(e.hasMoreElements()) { //읽어올 데이터가 있느냐?
			String eName = (String) e.nextElement(); //데이터를 읽어와서 형변환
			System.out.println("enum : "+eName);
		}
		
		//enum -> Iterator 변형이 안됨.
//		Iterator i = (Iterator) request.getParameterNames();
//		while(i.hasNext()) {
//			String eeName = (String) i.next();
//			System.out.println(eeName);
//		}
		
		String all_tel = getServletContext().getInitParameter("all_tel");
		String all_name = getServletContext().getInitParameter("all_name");
		String all_fruit = getServletContext().getInitParameter("all_fruit");
		
		System.out.println("all_tel : "+all_tel);
		System.out.println("all_name : "+all_name);
		System.out.println("all_fruit : "+all_fruit);
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(gender);
		System.out.println(Arrays.toString(hobby));
		System.out.println(fruit);
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head></head><body>");
		out.println("<h2>아이디 : "+id+"</h2>");
		out.println("<h2>이름 : "+name+"</h2>");
		out.println("<h2>성별 : "+gender+"</h2>");
		out.println("<h2>취미 : "+Arrays.toString(hobby)+"</h2>");
		out.println("<h2>좋아하는 과일 : "+fruit+"</h2>");
		out.println("</body></html>");
		out.close();
		
	}

}
