<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%! int num=0; %>
	<%! int sum(int a,int b){
	     	return a+b;
	}
	%>
	<h1>두수의 합을 구하는 식</h1>
	<h2><%= sum(5,7) %></h2>
	
	<% num = sum(1,2)+sum(4,5); %>
	<h2>메소드 호출의 합 : <%=num %></h2>
	
	
	
	<!-- jsp에서 html시작하기 -->
	<%--자바날짜 가져오기 --%>
	<%
	   ArrayList list = new ArrayList();
	   Date d = new Date();
	   SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	   String today = sdf1.format(d);
	   out.println(today);
	%>
	
	</body>
</html>