<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
		<style>div{border:1px solid black;}</style>
	</head>
	<body>
	  <div>
	    <%
	      String id = (String)session.getAttribute("naver_userId");
	      if(id==null){
	    	  out.println("<h3>로그인이 되어 있지 않습니다.</h3>");
	    %>
			  </div>
			  <ul>
			    <li>메인페이지</li>
			    <li><a href="join.html">회원가입</a></li>
			    <li><a href="login.html">로그인</a></li>
	    <%	  
	      }else{
	    	  out.println("<h3>"+id+" 님 환영합니다.</h3>");
	    %>
			    <li><a href="modify.jsp">회원정보수정</a></li>
			    <li><a href="logout.jsp">로그아웃</a></li>
	    <%	  
	      }
	    %>
	  </ul>
	
	</body>
</html>