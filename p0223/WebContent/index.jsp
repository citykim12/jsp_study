<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
	  <div>
	  <% String id = (String)session.getAttribute("session_Id");
	     if(id!=null){
		  out.println(id+"님 환영합니다.! 로그인 되었습니다.!");
		 }else{
		  out.println("로그인이 되어 있지 않습니다.");
		 }
	   %>
	  </div>
	  <ul>
	    <li><a href="login.jsp">로그인</a></li>
	    <li><a href="join.html">회원가입</a></li>
	    <li><a href="memberList.jsp">회원전체리스트</a></li>
	    <li><a href="modify.jsp">회원정보수정</a></li>
	    <li><a href="logout.jsp">로그아웃</a></li>
	  </ul>
	
	</body>
</html>