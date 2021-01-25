<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet에서 html출력</title>
</head>
<body>
  <h1>Post 전달된 값</h1>
  <h2>id 값 : <% out.println(request.getParameter("id")); %></h2>

</body>
</html>