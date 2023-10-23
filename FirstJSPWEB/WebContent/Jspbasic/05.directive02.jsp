<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Include 다른 페이지 불러오기</title>
	</head>
	<body>
		<!--include_header.jsp 파일의 내용을 불러오기  -->
		<%@include file="Include_head.jsp" %>
		
		본문의 내용이 있는 Section 불러오기
		
		<%@include file="Include_section.jsp" %>
		
		<!--include_footer.jsp 파일의 내용을 불러오기  -->
		<%@include file="Include_footer.jsp" %>
		
		
</body>
</html>