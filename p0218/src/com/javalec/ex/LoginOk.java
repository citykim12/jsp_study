package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request,response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        request.setCharacterEncoding("utf-8");
		MemberDao dao = new MemberDao();
		
		System.out.println("actionDo");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDto dto = dao.loginCheck(id, pw);  //db확인후 리턴
		if(dto.getId()!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("naver_userId", dto.getId());
			session.setAttribute("naver_userName", dto.getName());
			session.setAttribute("naver_usernName", dto.getnName());
			response.sendRedirect("index.jsp");
		}else {
			System.out.println("로그인실패!");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<html><head></head><body>");
			out.println("<script>");
			out.println("alert('아이디와 패스워드가 일치하지 않습니다. 다시 입력하세요');");
			out.println("location.href='login.html';");
			out.println("</script>");
			out.println("</body></html>");
			out.close();
		}
		
	}
}//class
