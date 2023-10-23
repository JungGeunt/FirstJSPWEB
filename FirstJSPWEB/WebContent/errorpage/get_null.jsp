<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Null pointer Exception</title>
	</head>
	<body>
		<%
		request.getParameter("num").charAt(0);
		%>
		
	</body>
</html>