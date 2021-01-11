<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <%!
	     String stu_id,name,pw,gender,campus;
	     String[] hobbys;
	  %>
	  <%
	     request.setCharacterEncoding("utf-8");
	     stu_id = request.getParameter("stu_id");
	     name = request.getParameter("stu_name");
	     pw = request.getParameter("pw");
	     gender = request.getParameter("gender");
	     hobbys = request.getParameterValues("hobby");
	     campus = request.getParameter("campus");
	  %>
	  
	  <h2>[ 입력된 정보 현황 ]</h2>
	  <ul>
	    <li>ex0111_02에서 넘어온 값</li>
	    <li>학번 : <%= stu_id %></li>
	    <li>이름 : <%= name %></li>
	    <li>비밀번호 : <%= pw %></li>
	    <li>성별 : <%= gender %></li>
	    <!-- for문을 돌려서 출력을 해야 함. -->
	    <li>취미 : <%= Arrays.toString(hobbys) %></li>
	    <li>캠퍼스 지역 : <%= campus %></li>
	  </ul>
	
	</body>
</html>