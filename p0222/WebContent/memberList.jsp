<%@page import="com.javalec.ex.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.ex.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% if(session.getAttribute("session_Id")==null){ %>
	<script>
	    alert("로그인되어 있지 않습니다. 로그인 후 이용바랍니다.");
	    location.href="login.jsp";
	</script>
	<%-- <jsp:forward page="login.jsp"></jsp:forward> --%>
<%}%>    
<%
   MemberDao dao = new MemberDao();
   ArrayList<MemberDto> list = dao.memberList();
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원리스트</title>
		<style type="text/css">
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		</style>
	</head>
	<body>
	  <table>
	    <tr>
	      <th>번호</th>
	      <th>아이디</th>
	      <th>비밀번호</th>
	      <th>취미</th>
	    </tr>
	    <% for(int i=0;i<list.size();i++){
	    	 MemberDto dto = list.get(i); %>	 
	    <%--반복시작--%>
	    <tr>
	      <td><%=i+1 %></td>
	      <td><%=dto.getId() %></td>
	      <td><%=dto.getPw() %></td>
	      <td><%=dto.getHobby() %></td>
	    </tr>
	    <%--반복 끝--%>
	    <%}%>
	  </table>
	  <a href="index.jsp">>> list 이동</a>
	
	</body>
</html>