<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
    pageContext.setAttribute("list", session.getAttribute("list"));
%>    
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체회원리스트</title>
		<style type="text/css">
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	  <table>
	    <tr>
	      <th>번호</th>
	      <th>아이디</th>
	      <th>비밀번호</th>
	      <th>취미</th>
	    </tr>
	    <c:forEach var="dto" items="${pageScope.list}" varStatus="vs">
	    <tr>
	      <td>${vs.count}</td>
	      <td>${dto.id }</td>
	      <td>${dto.pw }</td>
	      <td>${dto.hobby }</td>
	    </tr>
	    </c:forEach>
	    
	  </table>    
	
	</body>
</html>