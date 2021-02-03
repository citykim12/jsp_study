<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
	  <h2>로그인 성공</h2>
	  <p>아이디 : <%=request.getParameter("id") %></p>
	  <p>패스워드 : <%=request.getParameter("pw") %></p>
	  <p>닉네임 : <%=request.getParameter("nName") %></p>
	  <p><a href="hex0203_03.html">첫페이지 이동</a></p>
	</body>
</html>