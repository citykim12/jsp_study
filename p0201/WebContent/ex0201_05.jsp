<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
		  table,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	  <!-- 메소드를 만들어서 5,200까지 숫자의 합을 구하여 출력하시오.  -->
	  <%!
	    int num=10;
	  
	    int sum(int a,int b){
		  int sum=0;
		  for(int i=a;i<=b;i++){
			  sum += i;
		  }
		  return sum;
	    }
	  %>
	  <table>
	     <tr>
	       <td>5,200까지의 합</td>
	       <td><%=sum(5,200) %></td>
	     </tr>
	     <tr>
	       <td>num</td>
	       <td><%=num %></td>
	     </tr>
	  </table>
	
	</body>
</html>