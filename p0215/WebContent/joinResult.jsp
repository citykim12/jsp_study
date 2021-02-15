<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 결과</title>
		<style type="text/css">
		  table,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	  <table>
	    <tr>
	      <td>아이디</td>
	      <td><%=request.getParameter("id") %></td>
	    </tr>
	    <tr>
	      <td>닉네임</td>
	      <td><%=URLDecoder.decode(request.getParameter("nName")) %></td>
	    </tr>
	  </table>
	  <p><a href="index.jsp">메인페이지로 이동</a></p>
	
	</body>
</html>