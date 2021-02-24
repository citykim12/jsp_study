<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jstl 라이브러리</title>
	</head>
	<body>
	
	  <h2>jstl 변수선언,출력</h2>
	  <c:set var="stuNum" value="s001" />
	  <h3>stuNum변수 : <c:out value="${stuNum }" /></h3>
	  <c:remove var="stuNum"/>
	  <h3>stuNum변수 삭제 : <c:out value="${stuNum }" /> </h3>
	  
	  <hr>
	  <c:if test="${1+2==3}">
	     <h3>1+2는 3입니다.</h3>
	  </c:if>
	  <c:if test="${1+2!=3}">
	     <h3>1+2는 3이 아닙니다.</h3>
	  </c:if>
	  
	  <hr>
	  <c:set var="sum" value="0" />
	  <c:forEach var="i" begin="0" end="5" step="1">
	     <h3>${sum = sum + i}</h3><br>
	  </c:forEach>
       
      <% int sum=0;
         for(int i=0;i<=5;i++){
        	 out.println("<h3>"+(sum=sum+i)+"</h3>");
         }
      %> 
      
      <%
        pageContext.setAttribute("name", "홍길동"); 
      %>
      
      <hr>
      <%-- <c:set var="name" value="홍길동" /> --%>
      <c:choose>
          <c:when test="${pageScope.name == '홍길동'}">
             <h3>홍길동이라는 이름입니다.</h3>
          </c:when>
          <c:when test="${pageScope.name=='유관순' }">
             <h3>유관순이라는 이름입니다.</h3>
          </c:when>
          <c:when test="${pageScope.name=='강감찬' }">
             <h3>강감찬이라는 이름입니다.</h3>
          </c:when>
          <c:otherwise>
             <h3>이름이 없습니다.</h3>
          </c:otherwise>
      </c:choose>
      
      <%
         String name1="홍길동";
         switch(name1){
         case "홍길동":
        	 out.println("<h3>홍길동1이라는 이름입니다.</h3>");
        	 break;
         case "유관순":
        	 out.println("<h3>유관순이라는 이름입니다.</h3>");
        	 break;
         case "강감찬":
        	 out.println("<h3>강감찬이라는 이름입니다.</h3>");
        	 break;
         default:
        	 out.println("<h3>이름이 없습니다.</h3>");
        	 break;
         }
      
      
      %>
	  
	  
	  
	  
	  
	  
	
	
	</body>
</html>