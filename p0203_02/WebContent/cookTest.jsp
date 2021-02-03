<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 확인</title>
	</head>
	<body>
	  <%
	     Cookie[] ck = request.getCookies();
	  
	     if(ck!=null){
		     for(int i=0;i<ck.length;i++){
		    	 String cName = ck[i].getName();
		    	 String cValue = ck[i].getValue();
		    	 
		    	 out.println("쿠키이름 : "+cName);
		    	 out.println(", 쿠키값 : "+cValue+"<br>");
		     }
	     }else{
	    	 out.println("쿠키값이 1개도 없습니다.");
	     }
	  %>
	
	</body>
</html>