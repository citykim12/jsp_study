<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getRealPath("upload");

    int size = 1024 * 1024 * 10; //10mb 파일업로드제한
    String file=""; //파일업로드이름 aaa(1).jpg
    String orifile=""; //파일최초이름 aaa.jpg -> aaa(1).jpg
    String title="";
    String name="";
    
    // db연결, file업로드, 프린트연결 ... 
    
    try{
    	MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
    	
    	title = multi.getParameter("title");
    	name = multi.getParameter("name");
    	Enumeration files = multi.getFileNames();
    	
    	/* 파일업로드가 여러개일때 사용 
    	while(files.hasMoreElements()){
    		
    	} */
    	
    	String str = (String)files.nextElement();
    	
    	file = multi.getFilesystemName(str);  //저장된 이름
    	orifile = multi.getOriginalFileName(str); //옛날 이름
    	
    }catch(Exception e){
    	e.printStackTrace();
    }
%>    
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일 업로드 페이지</title>
		<style type="text/css">
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  .img_size{width:50px; height:50px;}
		</style>
	</head>
	<body>
	  <table>
	    <tr>
	      <th>번호</th>
	      <th>제목</th>
	      <th>작성자</th>
	      <th>파일이름</th>
	      <th>최초이름</th>
	      <th>다운로드</th>
	      <th>이미지</th>
	    </tr>
	    <tr>
	      <td>1</td>
	      <td><%=title %></td>
	      <td><%=name %></td>
	      <td><%=file %></td>
	      <td><%=orifile %></td> 
	      <!-- <a href="upload/aaa.jpg"> -->
	      <td><a href="upload/<%=file %>" download>다운로드</a></td>
	      <td><img class="img_size" src="upload/<%=file %>"></td>
	    </tr>
	  </table>
	
	
	</body>
</html>













