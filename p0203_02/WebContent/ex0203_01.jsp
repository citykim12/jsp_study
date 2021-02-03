<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <%
         //response.sendRedirect("success.jsp");
	  %>
	  <jsp:forward page="success.jsp">
	     <jsp:param name="tel" value="010-111-1111" />
	     <jsp:param name="gender" value='<%=URLEncoder.encode("10번", "utf-8") %>' />
	     <jsp:param name="address" value='<%=URLEncoder.encode("서울", "utf-8") %>'/>	  </jsp:forward> 
	
	</body>
</html>