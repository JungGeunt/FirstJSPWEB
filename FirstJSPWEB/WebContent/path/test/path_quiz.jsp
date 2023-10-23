<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>path_quiz</title>
	</head>
	<body>
	  <!-- 현재 위치에서 a 태그를 이용하여 경로 이동 -->
	  <!-- req_video 페이지로 상대 경로 이동 -->
	  <a href="../../request/req_video.jsp"> 상대경로</a>
	  
	  <!-- req_video 페이지로 절대 경로 이동 -->
	  <a href="/FirstJSPWEB/request/req_video.jsp"> 절대 경로</a>
	  
	  <!-- Testservlet 로 상대 경로 이동 -->
	  <a href="../../servlet/testServlet.jsp">서블릿 상대</a>
	  
	  <!-- Testservlet 로 절대 경로 이동 -->
	  <a href="/FirstJSPWEB/servlet/testServlet.jsp">서블릿 절대</a>
	  
	  <!-- first_movie 이미지 경로 참조 -->
	  <img alt="이미지" src="../../img/다운로드.jpg">
	</body>
</html>