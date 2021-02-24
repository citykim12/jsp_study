<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jstl</title>
	</head>
	<body>
	<jsp:useBean id="today" class="java.util.Date" />
	<fmt:formatDate value="${today}" pattern="yyyy/MM/dd hh:mm:ss" /><br>
	<hr>
	<h2><fmt:formatDate value="<%=new Date() %>" type="both" /></h2>
	<h2><fmt:formatDate value="<%=new Date() %>" type="date" /></h2>
	<h2><fmt:formatDate value="<%=new Date() %>" type="time" /></h2>
	<hr>
	<fmt:formatDate var="year" value="${today}" pattern="yyyy"/>
	<fmt:formatDate var="month" value="${today}" pattern="MM"/>
	<fmt:formatDate var="day" value="${today}" pattern="dd"/>
	<hr>
	<fmt:formatNumber value="123456789" groupingUsed="true" />
	<fmt:formatNumber value="3.141592121212" pattern="00.###" />
	
	<hr>
	
	<%
	   Date now = new Date();
	   SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
	   out.println(sdf1.format(now)); 
	%>
	
	
	
	<h2>년도 : ${year}</h2>
	<h2>월 : ${month}</h2>
	<h2>일 : ${day}</h2>
	</body>
</html>