<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>실패</title>
		<style>h2{color:red;}</style>
	</head>
	<body>
	  <h2><%=request.getParameter("name") %>님 예약되지 않았습니다.</h2>
	  <h3> <%
	    	 out.println("매니저와 상의하세요.");
	  %>
	  </h3>
	</body>
</html>