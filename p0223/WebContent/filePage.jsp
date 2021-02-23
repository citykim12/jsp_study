<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일업로드</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		   function formCheck(){
			   if($("#title").val()==""){
				   alert("제목을 입력하세요.!");
				   $("#title").focus();
				   return false;
			   }
			   if($("#name").val()==""){
				   alert("이름을 입력하세요.!");
				   $("#name").focus();
				   return false;
			   }
			   document.boardForm.submit();
		   }
		</script>
		
	</head>
	<body>
	  <form action="fileUpload.jsp" method="post" name="boardForm"  enctype="multipart/form-data">
	    <label>제목</label>
	    <input type="text" id="title" name="title"><br>
	    <label>작성자</label>
	    <input type="text" id="name" name="name"><br>
	    <label>파일 추가</label><br>
	    <input type="file" name="file1"><br>
	    <input type="button" onclick="formCheck()" value="전송"><br>
	  
	  </form>
	
	</body>
</html>