<%@page import="java.net.URLEncoder"%>
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
	    String tel = request.getParameter("tel");
	    String age = request.getParameter("age");
	    String name = request.getParameter("name");
	    
	    if(tel.equals("010-1111-1111") && name.equals("홍길동")){
	    %>	
	    	<jsp:forward page="reservation.jsp">
	    	   <jsp:param value='<%=URLEncoder.encode("10번","utf-8")%>' name="site"/>
	    	   <jsp:param value="vip" name="rank"/>
	    	</jsp:forward>
	    <%
	    
	    
	    
	    }else{
	    	response.sendRedirect("form2.html");
	    }
	  %>
	
	</body>
</html>