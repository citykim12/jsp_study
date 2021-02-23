<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>el 태그</title>
		<style type="text/css">
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	  <table>
	    <tr>
	      <td>아이디</td>
	      <td>패스워드</td>
	      <td>이름</td>
	    </tr>
	    <tr>
	      <td><%=request.getParameter("id")%></td>
	      <td>${param.pw }</td>
	      <td>${param["name"] }</td>
	    </tr>
	    <tr>
	      <td>${1+2 }</td>
	      <td>${1*2 }</td>
	      <td>${(5>4)?"참":"거짓" }</td>
	    </tr>
	    <tr>
	      <td>어플리케이션 출력</td>
	      <td>${applicationScope.server_admin }</td>
	      <td><%=(String)application.getAttribute("server_admin") %></td>
	    </tr>
	    <tr>
	      <td>섹션 출력</td>
	      <td>${sessionScope.session_id }</td>
	      <td><%=(String)session.getAttribute("session_id") %></td>
	    </tr>
	    <tr>
	      <td>섹션 출력</td>
	      <td>${sessionScope.session_pw }</td>
	      <td><%=(String)session.getAttribute("session_pw") %></td>
	    </tr>
	    <tr>
	      <td>request 출력</td>
	      <td>${requestScope.ip }</td>
	      <td><%=request.getAttribute("ip") %></td>
	    </tr>
	    <tr>
	      <td>request 출력</td>
	      <td>${requestScope.hidden_param }</td>
	      <td><%=request.getAttribute("hidden_param") %></td>
	    </tr>
	    
	   
	  </table>
	
	
	
	</body>
</html>