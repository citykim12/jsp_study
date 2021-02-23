<%@page import="com.javalec.ex.MemberDao"%>
<%@page import="com.javalec.ex.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<jsp:useBean id="member1" class="com.javalec.ex.MemberDto" scope="page" />
<jsp:setProperty name="member1" property="*" />  

<%
MemberDao dao = new MemberDao();
int chk = dao.memberInsert(member1);

%>  
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>join 처리</title>
		
	</head>
	<body>
	<%
	   if(chk==1){
		   out.println("성공");
	   }else{
		   out.println("실패");
	   }
	%>
	<div><a href="index.jsp">메인페이지이동</a></div>
	
	
	
	
	
	
	
	</body>
</html>