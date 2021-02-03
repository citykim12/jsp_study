<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키정보 읽어오기</title>
	</head>
	<body>
	  <%
	    
	    Cookie[] cook = request.getCookies(); //쿠키의 모든 정보 읽어오기
	    
	    out.println("[ 전체 쿠키정보 ] <br>");
	    for(int i=0;i<cook.length;i++){
	    	String cName = cook[i].getName();
	    	String cValue = cook[i].getValue();
	    	out.println((i+1)+"번째 쿠키이름 : "+cName);
	    	out.println(", 쿠키값 : "+cValue+"<br>");
	    }
	    out.println("===============================<br>");

	    out.println("[ 네이버로그인 쿠키정보 확인 ]");
	    int count=0;
	    for(int i=0;i<cook.length;i++){
	    	String cName = cook[i].getName();
	    	String cValue = cook[i].getValue();
	        //로그인되었는지 확인
	    	if(cook[i].getName().equals("naver_id")){
	    		out.println("네이버에서 로그인한 정보를 30분동안 가지고 있음"+"<br>");
	    		count++;
	    	}
	    }
	    if(count==0){
	    	out.println("네이버에서 로그인한 적이 없습니다."+"<br>");
	    }
	  %>
	  
	  <a href="cookDel.jsp">쿠키삭제 페이지이동</a>
	
	</body>
</html>