<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="stu" class="com.javalec.ex.StudentDto" />
<jsp:setProperty name="stu" property="*" />    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form 결과</title>
	</head>
	<body>
	  <table>
	    <tr>
	      <th>학번</th>
	      <th>이름</th>
	      <th>국어</th>
	    </tr>
	    <tr>
	      <td>${stu.stuNum }</td>
	      <td>${stu.stuName }</td>
	      <td>${stu.kor }</td>
	      <td></td>
	    </tr>
	    <tr>
	      <td>${param.stuNum }</td>
	      <td>${param.stuName }</td>
	      <td>${param.kor }</td>
	      <td></td>
	    </tr>
	  </table>
	  <c:if test="${stu.stuName=='홍길동' }">
	      <h3>홍길동 학생 점수가 입력되었습니다.</h3>
	  </c:if>
	  <c:if test="${stu.kor>=90 }">
	      <h3>A학점</h3>
	  </c:if>
	
	</body>
</html>