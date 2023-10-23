<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
 String age =request.getParameter("age");
 int result = Integer.parseInt(age);
 
 if(result >= 20){
	 //응답할 페이지 지정할때
	 response.sendRedirect("res_ex01_ok.jsp");
 }else{
	 response.sendRedirect("res_ex01_no.jsp");
 }
 
%>    
   <!-- 아래 내용은 삭제시켜도됨 --> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>res_ex01_result</title>
	</head>
	<body>
	
	</body>
</html>