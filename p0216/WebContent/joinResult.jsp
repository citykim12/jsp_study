<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String id =(String) session.getAttribute("id");
  String pw =(String) session.getAttribute("pw");
  String name =(String) session.getAttribute("name");
  String nName =(String) session.getAttribute("nName");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 완료</title>
	</head>
	<body>
	  <table>
	    <tr>
	      <td colspan="2"><h2>회원가입완료</h2></td>
	    </tr>
	    <tr>
	      <td>아이디</td>
	      <td><%=id %></td>
	    </tr>
	    <tr>
	      <td>패스워드</td>
	      <td><%=pw %></td>
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
	      <td colspan="2"><h3>회원가입을 축하합니다.</h3></td>
	    </tr>
	    <tr>
	      <td colspan="2"><a href="index.jsp"><h3>메인페이지 이동</h3></a></td>
	    </tr>
	  </table>
	
	</body>
</html>