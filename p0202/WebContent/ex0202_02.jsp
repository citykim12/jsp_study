<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	  <%!
	    int sum(int a,int b){
		  return a+b;
	    }
	  %>
	  <table>
	    <tr>
	      <th>단</th>
	      <th>순서</th>
	      <th>결과</th>
	      <th>더하기</th>
	    </tr>
	    <%
	      for(int i=2;i<=3;i++){
	    	  for(int j=1;j<=9;j++){
	    %>		  
	    <tr>
	      <td><%= i %></td>
	      <td><%= j %></td>
	      <td><%= i*j%></td>
	      <td><%= i+j %></td>
	    </tr>
	    <%
	    	  }
	      }
	    %>
	    
	  </table>
	
	  <!-- 메소드를 선언식으로 더하기에 사용할 것 -->
	  <!-- 단 | 순서 | 결과값 | 더하기 -->
	  <!-- 2  | 1  |   2   | 3    -->
	
	</body>
</html>