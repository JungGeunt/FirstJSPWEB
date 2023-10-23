<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 
 	String num = request.getParameter("num");
 	Integer sel =0;
 	if(num != null) sel = Integer.parseInt(num);
 %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_video 결과 </title>
	</head>
	<body>
	<%
	if(num == null){
	%>
	잘못된 접근 입니다.	
	<%
	}else if(sel == 1) { //num을 비교할때 
	%>
	<div align="center">
		<h2>농담곰</h2>
		<p>첫번째 , 농담곰 </p>
		<hr>
		<iframe width="640" height="480" 
		src="https://www.youtube.com/embed/o_fBcXShiU0" 
		title="인생은 회전농담곰" frameborder="0" 
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
		allowfullscreen></iframe>
	</div>
	
	<%
	}else if(sel == 2){ 
	%>
	<div align="center">
		<h2>아이유</h2>
		<p>첫번째 , 아이유 </p>
		<hr>
		<iframe width="640" height="480" 
		src="https://www.youtube.com/embed/wDfqXR_5yyQ" 
		title="아이유(IU)의 킬링보이스를 라이브로! - 하루 끝, 너의 의미, 스물셋, 밤편지, 팔레트, 가을 아침, 삐삐, Blueming, 에잇, Coin, 라일락 ㅣ 딩고뮤직" 
		frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
		allowfullscreen></iframe>
	</div>
	<%
	}
	%>
</body>
</html>