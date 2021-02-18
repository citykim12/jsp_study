package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
	
	String id,pw,name,nName,email1,email2,tel,address1,address2,gender,hobby;
	Timestamp mdate;
	
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
		String[] hobby1 = request.getParameterValues("hobby");
		hobby="";
		for(int i=0;i<hobby1.length;i++) {
			if(i==0) {
				hobby += hobby1[i]; 
			}else {
				hobby += ","+hobby1[i];
			} // 수영,조깅,골프,독서
		}
		mdate = new Timestamp(System.currentTimeMillis()); //현재시간저장
		MemberDto dto = new MemberDto(id,pw,name,nName,email1,email2,tel,address1,address2,gender,hobby,mdate);
		
		//db저장만 하면 됨.
		MemberDao dao = new MemberDao();
		int chk = dao.memberInsert(dto);
		if(chk==1) {
			System.out.println("저장성공!");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<html><head></head><body>");
			out.println("<script>");
			out.println("alert('회원가입이 완료되었습니다.');");
			out.println("location.href='index.jsp';");
			out.println("</script>");
			out.println("</body></html>");
			out.close();
			
		}else {
			System.out.println("저장실패!");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<html><head></head><body>");
			out.println("<script>");
			out.println("alert('회원정보가 입력되지 않았습니다. 다시 입력하세요');");
			out.println("location.href='index.jsp';");
			out.println("</script>");
			out.println("</body></html>");
			out.close();
		}
		
		
	}
}
