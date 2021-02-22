package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ModifyOk")
public class ModifyOk extends HttpServlet {
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
		int chk = dao.memberOneUpdate(dto);
		
		if(chk==1) {
			System.out.println("회원수정성공!");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<html><head></head><body>");
			out.println("<script>");
			out.println("alert('회원정보가 수정되었습니다.');");
			out.println("location.href='index.jsp';");
			out.println("</script>");
			out.println("</body></html>");
			out.close();
		}else {
			System.out.println("회원수정실패!");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<html><head></head><body>");
			out.println("<script>");
			out.println("alert('회원수정중 오류가 발생했습니다. 다시 수정해 주세요.');");
			out.println("location.href='index.jsp';");
			out.println("</script>");
			out.println("</body></html>");
			out.close();
		}
	}

}
