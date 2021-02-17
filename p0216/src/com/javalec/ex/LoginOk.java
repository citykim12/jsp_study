package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	
	Connection conn;
	Statement stmt;
	ResultSet rs;
	String id,pw,name,nName;
	
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
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
			stmt = conn.createStatement();
			//select * from member where id='aaa' and pw='1234';
			String query = "select * from member where id='"+user_id+"' and pw='"+user_pw+"'";
			System.out.println(query);
			rs = stmt.executeQuery(query); //rs=true, rs=false eee
			
			//비교
			if(rs.next()) {
				//아이디가 존재
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				nName =rs.getString("nName");
				
				HttpSession session = request.getSession();
				session.setAttribute("naver_userId", id);
				session.setAttribute("naver_userName", name);
				session.setAttribute("naver_usernName", nName);
				response.sendRedirect("loginResult.jsp");
			}else {
				//아이디가 존재하지 않음
				System.out.println("else");
				response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				response.setContentType("text/html; charset=utf-8");
				out.println("<html><head></head><body>");
				out.println("<script>");
				out.println("alert('아이디와 패스워드가 일치하지 않습니다. 다시 입력해주세요!');");
				out.println("location.href='login.html';");
				out.println("</script>");
				out.println("</body></html>");
				out.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		
		
		
	}
}
