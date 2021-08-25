<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>게시판</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/notice_list.css">
</head>
<body>
<section>
    <h1>NOTICE</h1>
    <div class="wrapper">
      <form action="/boardList" name="search" method="post">
        <select name="category" id="category">
          <option value="ball">전체</option>
          <option value="btitle">제목</option>
          <option value="bcontent">내용</option>
        </select>

        <div class="title">
          <input type="text" size="16" name="searchWord">
        </div>
  
        <button type="submit"><i class="fas fa-search"></i></button>
      </form>
    </div>
    <table>
      <colgroup>
        <col width="15%">
        <col width="45%">
        <col width="15%">
        <col width="15%">
        <col width="10%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>No.</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회수</th>
      </tr>
      <!-- 내용부분 -->
      <c:forEach items="${map.list}" var="boardVo">
	      <tr>
	        <td><span class="table-notice">${boardVo.bid }</span></td>
	        <td class="table-title">
	        <a href="boardView?bid=${boardVo.bid}&page=${map.page}&category=${map.category}&searchWord=${map.searchWord}">
	           <c:forEach begin="1" end="${boardVo.bindent }">▶</c:forEach>
   	           ${boardVo.btitle }
	        </a>
	        </td>
	        <td>${boardVo.bname }</td>
	        <td>${boardVo.bdate }</td>
	        <td>${boardVo.bhit }</td>
	      </tr>
      </c:forEach>
      
    </table>

    <ul class="page-num">
      <!-- 첫페이지 이동 -->
      <c:if test="${map.page == 1 }">
        <li class="first"></li>
      </c:if>
      <c:if test="${map.page != 1 }">
        <a href="boardList?page=1&category=${map.category}&searchWord=${map.searchWord}"><li class="first"></li></a>
      </c:if>
      <!-- 이전페이지 이동 -->
      <c:if test="${map.page <= 1 }">
        <li class="prev"></li>
      </c:if>
      <c:if test="${map.page > 1 }">
        <a href="boardList?page=${map.page-1}&category=${map.category}&searchWord=${map.searchWord}" ><li class="prev"></li></a>
      </c:if>
      <!-- 하단넘버링 넣기 -->
      <c:forEach var="nowpage" begin="${map.startpage}" end="${map.endpage }">
        <c:if test="${map.page == nowpage }">
	          <li class="num"><div>${nowpage}</div></li>
        </c:if>
        <c:if test="${map.page != nowpage }">
	        <a href="boardList?page=${nowpage }&category=${map.category}&searchWord=${map.searchWord}"><li class="num"><div>${nowpage}</div></li></a>
        </c:if>
      </c:forEach>
      <!-- 다음페이지 이동 -->
      <c:if test="${map.page >= map.endpage }">
        <li class="next"></li>
      </c:if>  
      <c:if test="${map.page < map.endpage }">
        <a href="boardList?page=${map.page+1}&category=${map.category}&searchWord=${map.searchWord}"><li class="next"></li></a>
      </c:if> 
      <c:if test="${map.page == map.maxpage }"> 
        <li class="last"></li>
      </c:if>  
      <c:if test="${map.page != map.maxpage }"> 
        <a href="boardList?page=${map.maxpage }&category=${map.category}&searchWord=${map.searchWord}"><li class="last"></li></a>
      </c:if>  
    </ul>

    <a href="boardWrite?page=${map.page }"><div class="write">쓰기</div></a>
  </section>

</body>
</html>