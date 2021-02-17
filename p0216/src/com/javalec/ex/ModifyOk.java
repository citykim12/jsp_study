package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ModifyOk")
public class ModifyOk extends HttpServlet {
	
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	String id,pw,name,nName,email1,email2,tel,address1,address2,gender;
	String[] hobby;
	
	
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
		String[] shobby = new String[4];
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
		hobby = request.getParameterValues("hobby");
		
//		for(String i:shobby) {
//			shobby = null;
//		}
		for(int i=0;i<hobby.length;i++) {
			//mhobby[i] = hobby[i];  //수영,골프,게임,독서
			switch(hobby[i]) {
				case "수영":
				   shobby[0]=hobby[i];	
				break;
				case "조깅":
					shobby[1]=hobby[i];	
				break;
				case "골프":
					shobby[2]=hobby[i];	
				break;
				case "독서":
					shobby[3]=hobby[i];	
				break;
			}
		}
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
//			stmt = conn.createStatement();
//			// update member set id='aaa',pw='1111',name='홍길동' where id='aaa';
//			String query = "update member set id='"+id+"',pw='"+pw+"',name='"+name+
//					"',nName='"+nName+"',email1='"+email1+"',email2='"+email2+
//					"',tel='"+tel+"',address1='"+address1+"',address2='"+address2+
//					"',gender='"+gender+"',hobby1='"+shobby[0]+"',hobby2='"+shobby[1]+
//					"',hobby3='"+shobby[2]+"',hobby4='"+shobby[3]+"',mdate=sysdate where id='"+id+"'";
//			int i = stmt.executeUpdate(query);
			String query="update member set id=?,pw=?,name=?,nName=?,"
					+ "email1=?,email2=?,tel=?,address1=?,address2=?,gender=?,"
					+ "hobby1=?,hobby2=?,hobby3=?,hobby4=?,mdate=sysdate where id=?";
			System.out.println(query);
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, nName);
			pstmt.setString(5, email1);
			pstmt.setString(6, email2);
			pstmt.setString(7, tel);
			pstmt.setString(8, address1);
			pstmt.setString(9, address2);
			pstmt.setString(10, gender);
			pstmt.setString(11, shobby[0]);
			pstmt.setString(12, shobby[1]);
			pstmt.setString(13, shobby[2]);
			pstmt.setString(14, shobby[3]);
			pstmt.setString(15, id);
			int i = pstmt.executeUpdate();
			
			if(i==1) {
				response.sendRedirect("index.jsp");
			}else {
				System.out.println("else");
				response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				response.setContentType("text/html; charset=utf-8");
				out.println("<html><head></head><body>");
				out.println("<script>");
				out.println("alert('데이터입력이 잘못되었습니다. 다시 입력 해주세요!');");
				out.println("location.href='modify.jsp';");
				out.println("</script>");
				out.println("</body></html>");
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
