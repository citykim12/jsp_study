<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<title>1</title>
		<script type="text/javascript">
		function formCheck(){
			alert($("#age").val());
			alert("함수호출");
			if($("#age").val()==null){
				alert("데이터가 없습니다.");
				$("#age").focus();
				return false;
			}
			
			
		}
		$(function(){
			
		});
		
		
		</script>
	</head>
	<body>
	<%
	    if(session.getAttribute("age")!=null){
		    int age = (int)session.getAttribute("age");
		    out.println("당신의 나이는 "+age+" 세. 미성년자입니다.");
	    }
	  %>
	  <form action="2.jsp" method="get" name="form">
	    <label>나이</label>
	    <input type="text" id="age" name="age"><br>
	    <input type="button" onclick="formCheck()" value="확인">
	  
	  </form>
	
	</body>
</html>