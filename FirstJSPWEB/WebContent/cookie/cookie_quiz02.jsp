<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
 <%
 	Cookie [] arr=request.getCookies();
	if(arr == null){ //쿠키가 null이 아닌 경우 실행하기 위해서
	 %>
	 	쿠키값이 없습니다.
	 <% 
	  }else{
		  for(int i=0; i<arr.length; i++){
			  if(arr[i].getName().equals("show")){
				  out.println(arr[i].getValue()+ "<br>");
			  }
		  }
	}
 %>

    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<!-- 
	쿠키 값이 없으면, "쿠키값이 없습니다." 
	show 쿠키가 있는 경우에는 
	"마지막 접속 날짜:~~~가 출력되게 해주세요.
	-->
		<%if(arr == null){    %>
			쿠키가 없습니다.
		<%}else{ %>
		 마지막 접속 날짜: 
		 <%} %>
	</body>
</html>