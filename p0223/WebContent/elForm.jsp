<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>el Form</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		   function elFormcheck(){
			   if($("#stuNum").val()==""){
				   alert("학번을 입력하세요.!");
				   $("#stuNum").focus();
				   return false;
			   }
			   if($("#stuName").val()==""){
				   alert("이름을 입력하세요.!");
				   $("#stuName").focus();
				   return false;
			   }
			   document.elForm.submit();
		   }
		   
		   function elFormReset(){
			   document.elForm.reset();
		   }
		</script>
	</head>
	<body>
	  <form action="eltest1.jsp" method="post" name="elForm">
	    <label>학번</label>
	    <input type="text" id="stuNum" name="stuNum"><br>
	    <label>이름</label>
	    <input type="text" id="stuName" name="stuName"><br>
	    <label>국어점수</label>
	    <input type="text" id="kor" name="kor"><br>
	    <input type="button" onclick="elFormcheck()" value="전송">
	    <input type="button" onclick="elFormReset()" value="취소">
	    
	  
	  </form>
	
	</body>
</html>