<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>for문</title>
		<style type="text/css">
		  table,th,td{border:1px solid black; border-collapse: collapse;
		  text-align: center;
		  }
		</style>
	</head>
	<body>
	<table>
	   <tr>
	     <th>수</th>
	     <th>소계</th>
	   </tr>
	   <!-- jsp -->
	   <%
		   int sum=0;
		    for(int i=1;i<=100;i++){
		    	sum = sum+i;
		%>
		<tr>
		  <td><%=i %></td>
		  <td><%=sum %></td>
		</tr>
		<%}%>
	   <!-- jsp -->
	   <tr>
	     <td>총합계</td>
	     <td><%=sum %></td>
	   </tr>
	</table>
	
	
	</body>
</html>