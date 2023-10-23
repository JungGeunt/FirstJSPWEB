<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	/*
 	Date클래스를 사용하여 웹페이지 접근 시간으 xxxx년 xx월 xx일 형태로 생성
 	날자 형식을 문자열 형태로 show라는 이름의 쿠키로 생성
 	show 쿠키를 cookie02.jsp에서 확인 할 수 있게 만들어 주세요.
 	*/
 	Date now = new Date();
 	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String date =sdf.format(now);    
 
	
 	Cookie show = new Cookie("show", date);
 
 	show.setMaxAge(60*60);
 	
 	response.addCookie(show);
 	
 	
	
 %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie01</title>
	</head>
	<body>
			<a href="cookie_quiz02.jsp">쿠키 값 확인</a>
	</body>
</html>