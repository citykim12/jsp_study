<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>성공</title>
	</head>
	<body>
	  <h2><%=request.getParameter("name") %>님 예약되었습니다.</h2>
	  <h3> <%
	     String sage = request.getParameter("age");
	     int age = Integer.parseInt(sage);
	     
	     if(age>=20){
	    	 out.println("1번 자리로 이동하시면 됩니다.");
	     }else{
	    	 out.println("21번 자리로 이동하시면 됩니다.");
	     }
	  %>
	  </h3>
	</body>
</html>