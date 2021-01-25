package p0125;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S01")
public class S0125_01 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String id = request.getParameter("nid");
	    String pw = request.getParameter("npw");
	    String name = request.getParameter("nname");
	    String tel = request.getParameter("ntel");
	    String gender = request.getParameter("ngender");
	    String[] hobby = request.getParameterValues("nhobby");
	    
	    System.out.println(id);
	    System.out.println(pw);
	    System.out.println(name);
	    System.out.println(tel);
	    System.out.println(gender);
	    System.out.println(hobby);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

}
