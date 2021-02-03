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
	     out.println(request.getServerName()+"<br>");
	     out.println(request.getServerPort()+"<br>");
	     out.println(request.getMethod()+"<br>");
	     out.println(request.getProtocol()+"<br>");
	     out.println(request.getRequestURL()+"<br>");
	     out.println(request.getRemoteAddr()+"<br>");
	     String uri = request.getRequestURI();
	     String cp = request.getContextPath();
	     String fileName = uri.substring(cp.length());
	     out.println(uri+"<br>");
	     out.println(cp+"<br>");
	     out.println(fileName+"<br>");
	     
	     out.println(request.getParameter("id")+"<br>");
	     String[] hobby = request.getParameterValues("hobby");
	     out.println(Arrays.toString(hobby)+"<br>");
	     
	     Enumeration e = request.getParameterNames();
	     while(e.hasMoreElements()){
	    	String eName =(String)e.nextElement();
	    	out.println(eName+" ");
	     }
	     out.println("<br>");
	  
	  
	  %>
	
	</body>
</html>