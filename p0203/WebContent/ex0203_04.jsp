<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>확인</title>
	</head>
	<body>
	  <%
	    String tel = request.getParameter("tel");
	    String age = request.getParameter("age");
	    String name = URLEncoder.encode(request.getParameter("name"),"utf-8");
	    
	    if(tel.equals("010-1111-1111") && request.getParameter("name").equals("홍길동")){
	    	response.sendRedirect("success.jsp?name="+name+"&age="+age);
	    }else{
	    	response.sendRedirect("fail.jsp?name="+name+"&age="+age);
	    }
	  
	  %>
	
	</body>
</html>