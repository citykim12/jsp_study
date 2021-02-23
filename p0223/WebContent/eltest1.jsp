<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<jsp:useBean id="stu1" class="com.javalec.ex.StudentBean" scope="page" />
<jsp:setProperty name="stu1" property="*" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>el 태그</title>
	</head>
	<body>
	학번:${stu1.stuNum }<br>
	이름:${stu1.stuName }<br>
	국어점수:${stu1.kor }<br>
	
	</body>
</html>




<%-- <jsp:setProperty name="stu1" property="stuNum" value="s001" />
<jsp:setProperty name="stu1" property="stuName" value="홍길동" />
<jsp:setProperty name="stu1" property="kor" value="90" /> --%>
	<%-- 학번:<jsp:getProperty name="stu1" property="stuNum" /><br>
	이름:<jsp:getProperty name="stu1" property="stuName" /><br>
	국어점수:<jsp:getProperty name="stu1" property="kor" /><br> --%>