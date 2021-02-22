package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String[] hobby1 = request.getParameterValues("hobby");
		String hobby="";
		for(int i=0;i<hobby1.length;i++) {
			if(i==0) {
				hobby += hobby1[i];
			}else {
				hobby +=","+hobby1[i];  //수영,골프,게임,독서
			}
		}
		MemberDto dto = new MemberDto(id,pw,hobby);
		MemberDao dao = new MemberDao();
		int chk = dao.memberInsert(dto);
		
		if(chk==1) {
			System.out.println("회원가입성공!");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<html><head></head><body>");
			out.println("<script>");
			out.println("alert('회원가입이 완료되었습니다. 메인으로 이동합니다.');");
			out.println("location.href='index.jsp';");
			out.println("</script>");
			out.println("</body></html>");
			out.close();
		}else {
			System.out.println("회원가입실패!");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<html><head></head><body>");
			out.println("<script>");
			out.println("alert('회원가입 오류가 발생했습니다. 다시 가입하세요.');");
			out.println("location.href='join.html';");
			out.println("</script>");
			out.println("</body></html>");
			out.close();
		}
	}
}
