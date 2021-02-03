<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키저장하기</title>
	</head>
	<body>
	  <%
	     Cookie ck1 = new Cookie("cName","cValue"); //쿠키선언
	     ck1.setMaxAge(60*60); //60초*60분=3600초, 60초*30분=1800초
	     response.addCookie(ck1); //user클라이언트 컴퓨터에 저장		 
	     Cookie ck2 = new Cookie("user_id","user1");
	     ck2.setMaxAge(3600);
	     response.addCookie(ck2);
	     Cookie ck3 = new Cookie("admin_id","admin");
	     ck3.setMaxAge(3600);
	     response.addCookie(ck3);
	     Cookie ck4 = new Cookie("naver_id","aaa");
	     ck4.setMaxAge(3600);
	     response.addCookie(ck4);
	     Cookie ck5 = new Cookie("naver_pw","1111");
	     ck5.setMaxAge(3600);
	     response.addCookie(ck5);
	  
	  %>
	  
	  <a href="cookGet.jsp">쿠키정보 읽어오기</a>
	
	</body>
</html>