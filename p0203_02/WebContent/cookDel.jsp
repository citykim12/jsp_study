<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키삭제</title>
	</head>
	<body>
	  <%
	    Cookie[] ck = request.getCookies();
	    /* for(Cookie i:ck){
	    	i.setMaxAge(0);
	    	response.addCookie(i);
	    } */
	    
	    for(int i=0;i<ck.length;i++){
	    	ck[i].setMaxAge(0);
	    	response.addCookie(ck[i]);
	    }
	  %>
	  <a href="cookTest.jsp">쿠키확인페이지 이동</a>
	
	</body>
</html>