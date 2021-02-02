<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 
		서버이름,포트번호,요청방식,프로토콜,url,uri,contextpath,filename,ip번호)
		 -->
		 <%
		   String uri = request.getRequestURI();
		   String ctpath = request.getContextPath();
		   String fileName = uri.substring(ctpath.length());
		   request.getRemoteAddr();
		   
		   out.println(fileName);
		   
		   //아이디, 패스워드, 이름,취미를 출력해보세요.
		   String id = request.getParameter("id");
		   String pw = request.getParameter("pw");
		   String age = request.getParameter("age");
		   Integer.parseInt(age);
		   String[] hobby = request.getParameterValues("hobby");
		   out.println(id+"<br>");
		   out.println(pw+"<br>");
		   out.println(age+"<br>");
		   out.println(Arrays.toString(hobby));
		   
		 %>
	</body>
</html>