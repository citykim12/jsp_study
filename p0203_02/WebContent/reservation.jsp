<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <%= request.getParameter("name") %>님 예약되었습니다.<br>
	  나이 : <%=request.getParameter("age") %><br>
	  <% String site = request.getParameter("site"); %>
	  좌석 : <%= URLDecoder.decode(site, "UTF-8")%>
	
	</body>
</html>