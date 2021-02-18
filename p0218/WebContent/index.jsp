<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
		<style>
		  div{border:1px solid black;}
		</style>
	</head>
	<body>
	   <div>
	     <% 
	       String nName = (String)session.getAttribute("naver_usernName");
	       if(nName==null){ %>
     	     <h3>로그인이 되지 않았습니다.</h3>
	   </div>
	   <ul>
		     <li><a href="login.html">로그인</a></li>
		     <li><a href="join.html">회원가입</a></li>
		<%}else{%>
	         <h3><%=nName %>님 로그인되었습니다.</h3> 
	   </div>
	   <ul>
		     <li><a href="memberList.jsp">리스트</a></li>
		     <li><a href="modify.jsp">회원정보수정</a></li>
		     <li><a href="logout.jsp">로그아웃</a></li>
     	<%}%>   
	   </ul>
	</body>
</html>