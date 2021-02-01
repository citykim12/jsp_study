<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>구구단 출력</title>
		<style type="text/css">
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	<!-- 구구단 출력 -->
	<table>
	  <%
	     for(int i=2;i<=5;i++){
	  %>
		  <!-- html출력 -->
		  <tr>
		    <th colspan="3"><h3><%=i %>단</h3></th>
		  </tr>
	  <%  	 
	    	 for(int j=1;j<=9;j++){
	  %>
	  <tr>
	    <th>단</th>
	    <th>순서</th>
	    <th>값</th>
	  </tr>
	  <tr>
	    <td><%=i %></td>
	    <td><%=j %></td>
	    <td><%=i*j %></td>
	  </tr>
	  <%  		 
	    	 }
	     }
	  %>
	  
	
	
	</table>
	</body>
</html>