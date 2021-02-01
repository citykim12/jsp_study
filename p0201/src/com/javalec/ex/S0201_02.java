package com.javalec.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/S0201_02")
public class S0201_02 extends HttpServlet {
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String path = getInitParameter("path");
		
		String all_tel = getServletContext().getInitParameter("all_tel");
		String all_name = getServletContext().getInitParameter("all_name");
		String all_fruit = getServletContext().getInitParameter("all_fruit");
		
		System.out.println("all_tel : "+all_tel);
		System.out.println("all_name : "+all_name);
		System.out.println("all_fruit : "+all_fruit);
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(path);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
