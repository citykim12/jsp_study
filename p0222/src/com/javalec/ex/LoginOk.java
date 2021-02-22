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
		System.out.println("doGet");
		actionDo(request,response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		request.setCharacterEncoding("utf-8"); //form데이터 한글처리
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberDao dao = new MemberDao();
		MemberDto dto = dao.memberLogin(id,pw);
		if(dto.getId()!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("session_Id", dto.getId());
			session.setAttribute("session_hobby", dto.getHobby());
			response.sendRedirect("index.jsp");
		}else {
			System.out.println("로그인실패!");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<html><head></head><body>");
			out.println("<script>");
			out.println("alert('아이디 또는 패스워드가 일치하지 않습니다. 다시 입력하세요.');");
			out.println("location.href='login.jsp';");
			out.println("</script>");
			out.println("</body></html>");
			out.close();
		}
	}
}
