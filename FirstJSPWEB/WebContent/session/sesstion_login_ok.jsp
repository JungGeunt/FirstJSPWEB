<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%
  /*
	1. 아이디, 비밀번호, 닉네임 받기
	2. 조건 : 아이디와 비밃번호가 서로 동일하면, user_id이름으로 id를 세션에 저장
		user_name 이름으로 nick세션에 저장
		session_welcome 페이지로 이동해서 "id님 (이름) 님 환영합니다". 출력
		
		아이디와 비밀 번호가 틀린 경우, 다시 로그인 페이지로 리다이렉트
  */
  request.setCharacterEncoding("utf-8"); //한글 처리 
 
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  String nick =request.getParameter("nick");
  
  //조건 2
  if(id.equals(pw)){
	  //로그인 
	  session.setAttribute("user_id", id);
	  session.setAttribute("user_name", nick);
	  response.sendRedirect("session_welcome.jsp");
  }else{
	  //로그인 실패
	  //response.sendRedirect("session_login.jsp");
	  //자바스크립트로 구현
	  /*
	  자바 스트립의 변수 선언
	  */
	  %>
	<script>
		check(); //함수 호츌. 자바스크립트는 선언되어 있으면 앞뒤 어든 상관이 없이 사용가능
		function check() {
			 alert("로그인에  실패했습니다.");
			 history.go(-1);// 뒤로가기(history객체는 브라우저에 있는 접속 페이지)
		}
</script>  
 <%}%>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>sesstion_login_ok.jsp</title>
	</head>
	<body>
	
	</body>
</html>