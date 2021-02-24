<%@page import="com.javalec.ex.Member3Dto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.ex.Member3Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
   Member3Dao dao = new Member3Dao();
   ArrayList<Member3Dto> list = dao.member3SelectAll();
   pageContext.setAttribute("list", list);
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
	    <!-- 반복 시작 -->
	    <tr>
	      <td>${vs.count}</td>
	      <td>${dto.id }</td>
	      <td>${dto.pw }</td>
	      <td>${dto.hobby }</td>
	    </tr>
	    <!-- 반복 끝 -->
	    </c:forEach>
	    
	    <%-- 
	    
	    <%
	       for(int i=0;i<list.size();i++){
	    	   Member3Dto dto = list.get(i); %>
	    <!-- 반복시작 -->
			    <tr>
			      <td><%=i+1 %></td>
			      <td><%=dto.getId() %></td>
			      <td><%=dto.getPw() %></td>
			      <td><%=dto.getHobby() %></td>
			    </tr>
	    <%}%>
	    <!-- 반복 끝 --> 
	    
	    --%>
	  </table>    
	
	</body>
</html>