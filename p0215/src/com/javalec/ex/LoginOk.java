package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	private String id,pw,name,nName,email1,email2,tel,address1,address2,
	        gender,hobby1,hobby2,hobby3,hobby4,mdate;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request,response);
	}
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		String upw = request.getParameter("pw");
		
		try {
			System.out.println("oracle 전");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			stmt = conn.createStatement();
			//"select * from member2 where id='"+aaa+"'";
			String query = "select * from member2 where id='"+uid+"'";
			rs = stmt.executeQuery(query);
			System.out.println("oracle 데이터 읽기전");
			while(rs.next()) {
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				nName = rs.getString("nName");
			}
			System.out.println(id);
			if(uid.equals(id) && upw.equals(pw)) {
				HttpSession session = request.getSession();
				session.setAttribute("naver_id", id);
				session.setAttribute("naver_name", name);
				session.setAttribute("naver_nName", nName);
				System.out.println("loginResult.jsp");
				response.sendRedirect("loginResult.jsp");
			}else {
				response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				response.setContentType("text/html; charset=utf-8");
				System.out.println("스크립트 페이지 이동");
				out.println("<html><head></head><body>");
				out.println("<script>alert('아이디 또는 패스워드가 일치하지 않습니다.');"
						+ "location.href='login.html';</script>");
				out.println("</body></html>");
				//response.sendRedirect("login.html");
				out.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}		
	}
}
