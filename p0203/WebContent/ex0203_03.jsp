<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<!-- form1 : id, pass / ex0203_03.jsp admin 1234 loginok.jsp loginfail.jsp -->
	<!-- form1,ex0203_03.jsp,loginOk.jsp,loginFail.jsp -->
	  <%
	     String id = request.getParameter("id");
	     String pw = request.getParameter("pw");
	     String nickName = URLEncoder.encode("조아님","utf-8");
	     
	     if(id.equals("admin") && pw.equals("1234")){
	    	 response.sendRedirect("loginOk.jsp?id="+id+"&pw="+pw+"&nName="+nickName);
	     }else{
	    	 response.sendRedirect("hex0203_03.html");
	     }
	  
	  
	  %>
	
	
	
	</body>
</html>