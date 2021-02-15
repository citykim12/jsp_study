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


@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
	
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	String id,pw,name,nName,email1,email2,tel,address1,address2,gender;
	String[] hobby;
	String[] mhobby;
	
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
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		nName = request.getParameter("nName");
		email1 = request.getParameter("email1");
		email2 = request.getParameter("email2");
		tel = request.getParameter("tel");
		address1 = request.getParameter("address1");
		address2 = request.getParameter("address2");
		gender = request.getParameter("gender");
		hobby = request.getParameterValues("hobby"); //checkbox
		
		for(int i=0;i<hobby.length;i++) {
			mhobby[i] = hobby[i];
		}
		
		try {
			System.out.println("oracle 전");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");			
			stmt = conn.createStatement();
			String query = "insert into member2 values('"+id+"','"+pw+"','"
			+name+"','"+nName+"','"+email1+"','"+email2+"','"+tel+"','"
			+address1+"','"+address2+"','"+gender+"','"
			+mhobby[0]+"','"+mhobby[1]+"','"+mhobby[2]+"','"+mhobby[3]+"',sysdate)";
			int i = stmt.executeUpdate(query);
			System.out.println("오라클 실행 후");
			if(i==1) {
				System.out.println("insert 성공");
				nName = URLEncoder.encode(nName,"utf-8");
				response.sendRedirect("joinResult.jsp?id="+id+"&nName="+nName);
			}else {
				System.out.println("insert 실패");
				response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				response.setContentType("text/html; charset=utf-8");
				out.println("<html><head></head><body>");
				out.println("<script>alert('회원가입이 정상적으로 되지 않았습니다. 다시 입력하세요!');"
						+ "location.href='join.html';</script>");
				out.println("</body></html>");
				out.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
