<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    <%!
    int total= 0;
    
    %>
    <%
    total++;
    %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<p>
	<!-- 10번쨰 방문자가 접속시 당첨되었습니다. 를 출력하게 만들어 주세요. -->
	매 10번쨰 방문자에게 기프티콘을 드립니다.
	페이지 누적 요청 :<%=total %><br>
	
	<% if((total%10)==0){
	 out.println(total+"번쨰 방문자입니다  당첨되었습니다 ");
	}
	%>
	</p>
	<h2>랜덤 구구단</h2>
	이번에 랜덤 구구단은 ~~단 입니다.<br>
	<!-- 하단의 구구단의 내용을 출력  -->
	<%
	Random ran = new Random();
	 int RN = ran.nextInt(8)+2;	 
	for(int i=1; i<10; i++ ){
		out.println(RN + " X " + i + " = " + RN*i +" <br>");
	}
	%>
</body>
</html>