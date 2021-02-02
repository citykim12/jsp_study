<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 만들기</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	<!-- 번호 | 제목 | 작성자 | 조회수 -->
	   <table>
	     <tr>
	       <th>번호</th>
	       <th>제목</th>
	       <th>작성자</th>
	       <th>조회수</th>
	     </tr>
	     <%
	        for(int i=0;i<20;i++){
	     %>   	
	     <tr>
	       <td><%=i+1 %></td>
	       <td>제목<%=i+1 %></td>
	       <td>홍길동</td>
	       <td>10</td>
	     </tr>
	        	
	     <%}%>
	   </table>
	</body>
</html>







