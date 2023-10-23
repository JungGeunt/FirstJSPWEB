<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//멤버 변수
	String name = "홍길동";
	int age =20;
%>    
<%
	//지역 변수 
	//int age =30;
	String email= "abc@naver.com";
	String adrress = "서울시 마포구";

%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		out.println("이름 : <strong> "+ name + "</strong><br>");
		out.println("나이 : " + age + "<br>");
		out.println("이메일 : " +email + "<br>");
		%>
		<hr>
		이름:<strong><%=name %></strong><br>
		나이:	<%=age %><br>
		이메일: <%=email %><br>
		주소:	<%= adrress %><br>
		
		
		이름 : 
		<%
		out.println(name + "<br>");
		%>
		
</body>
</html>