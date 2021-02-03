<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>성공</title>
	</head>
	<body>
	  <h2>아이디 : <%=request.getParameter("id") %></h2>
	  <h2>이름 : <%=request.getParameter("name") %></h2>
	  <h2>전화번호 : <%=request.getParameter("tel") %></h2>
	  
	  
	</body>
</html>