<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
	-주석은 실제 프로그램에 영향이 없고, 프로그햄 설명 등의 목적으로 사용되는 태그
	-HTML 및 JSP 주석은 각각 별도로 존재함
	-HTML 주석은 <!-- --> 표기하고, 웹 브라우저에서 페이지 소스 보기하면 주석도 표기됨
	-JSP 주석은  위와 같이 표기하고 , 웹 브라우저에서 소스 보기하면 표기X
	-AVA 주석도 혼용이 가능함(//, /* ~ */)
 --%>    
    
    
    
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>주석 처리</title>
	</head>
	<body>
		<!-- html 주석 -->
		<h2> 주석이 아님</h2>
		<%-- jsp주석 --%>
		<h2> 주석이 아님</h2>
		<!-- jsp주석은 서버에서 처리 하기 때문에 웹 브라우저에서 보여주지않음. -->
	</body>
</html>