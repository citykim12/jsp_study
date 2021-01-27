<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>폼데이터</title>
	</head>
	<body>
	  <h1>폼 데이터 값 </h1>
	  <h2>id : <%= request.getParameter("id") %></h2>
	  <h2>pw : <%= request.getParameter("pw") %></h2>
	  <h2>name : <%= request.getParameter("name") %></h2>
	  <h2>tel : <%= request.getParameter("tel") %></h2>
	  <h2>gender : <%= request.getParameter("gender") %></h2>
	  <h2>hobby : <% String[] hobby = request.getParameterValues("hobby");
	       for(String i:hobby){
	    	   out.println(i+" ");
	       } %></h2>
	
	</body>
</html>