<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp페이지</title>

</head>
<body>
  <h1>jsp수업 진행합니다.</h1>
  <form action="http://localhost:8181/p0125/S0125_03" method="get" name="form">
    <input type="text" name="id">
    <input type="submit" value="전송">
  </form>
  <% 
     int b=100;
     int c=0;
     for(int i=1;i<=b;i++){
    	 c += i;
     }
     //System.out.println(c);
     out.println(c);
     %>
</body>
</html>