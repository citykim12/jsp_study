<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String id = (String)session.getAttribute("naver_userId");
   if(id==null){
	   response.sendRedirect("index.jsp");
   }
   String name = (String)session.getAttribute("naver_userName");
   String nName = (String)session.getAttribute("naver_usernName");
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인 결과페이지</title>
	</head>
	<body>
	  <table>
	    <tr>
	      <td colspan="2"><h2>로그인 정보</h2></td>
	    </tr>
	    <tr>
	      <td>아이디</td>
	      <td><%=id %></td>
	    </tr>
	    <tr>
	      <td>이름</td>
	      <td><%=name %></td>
	    </tr>
	    <tr>
	      <td>닉네임</td>
	      <td><%=nName %></td>
	    </tr>
	    <tr>
	      <td><a href="logout.jsp">로그아웃</a></td>
	      <td><a href="index.jsp">메인으로 이동</a></td>
	    </tr>
	  </table>
	</body>
</html>