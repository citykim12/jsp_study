<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>3</title>
	</head>
	<body>
	  <%
	    int age = (int)session.getAttribute("age");
	    out.println("당신의 나이는 "+age+" 세. 성인입니다.");
	  %>
	
	</body>
</html>