<%@page import="com.javalec.ex.MManagerDto"%>
<%@page import="com.javalec.ex.MManagerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="com.javalec.ex.MManagerDto" />  
<jsp:setProperty name="dto" property="*" />  
<%
   MManagerDao dao = new MManagerDao();
   MManagerDto mdto = dao.mManagerLogin(dto);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>loginOk</title>
	</head>
	<body>
	  <%
	     if(mdto.getmNum()!=null){
	    	 out.println("로그인성공 데이터 : "+mdto.getmNum());
	    	 out.println("로그인 성공");
	    	 session.setAttribute("session_mNum", mdto.getmNum());
	    	 session.setAttribute("session_mName", mdto.getmName());
	     }else{
	    	 out.print("로그인 실패");
	     }
	  %>
	  <div><a href="index.jsp">메인으로 이동</a></div>
	
	</body>
</html>