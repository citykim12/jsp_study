<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>2</title>
	</head>
	<body>
	  <%
	     String age1 = request.getParameter("age");
	     int age = Integer.parseInt(age1);
	     
	     if(age>=20){
	    	 session.setAttribute("age", age);
	    	 response.sendRedirect("3.jsp");
	    	 
	     }else{
	    	 session.setAttribute("age", age);
	    	 response.sendRedirect("1.jsp");
	     }
	  
	  
	  %>
	
	</body>
</html>