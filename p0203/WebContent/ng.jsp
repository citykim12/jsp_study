<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>h2{ color:red; }</style>
	</head>
	<body>
	   <h2><%=request.getParameter("age") %>세 이하 담배판매가 불가능</h2>
	   <a href="hex0203_02.html">첫페이지 이동</a>
	</body>
</html>