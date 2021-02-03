<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>나이체크</title>
	</head>
	<body>
	  <%
	     String name = request.getParameter("name");
	     String sage = request.getParameter("age");
	     int age = Integer.parseInt(sage);
	     
	     if(age>=20){
	    	 response.sendRedirect("pass.jsp?age="+age );
	     }else{
	    	 response.sendRedirect("ng.jsp?age="+age);
	     }
	  
	     
	  
	  %>
	
	</body>
</html>