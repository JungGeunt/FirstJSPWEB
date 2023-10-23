<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 //리스트 객체 생성
 ArrayList<Integer> lotto = new ArrayList();
 Random ran = new Random();
 while(lotto.size()<6){
	 int rn = ran.nextInt(45)+1;
	 if(!lotto.contains(rn)){
		  lotto.add(rn);
 } 
 }
 Collections.sort(lotto);
 %>   
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsptag로또 결과 출력하기</title>
	</head>
	<body>
		<!-- 
		ArrayList를 사용하여 1~45 까지 랜덤한 번호를 발생시키고 리스트에 담으세요.
		
		body태그에서
		이번주 로또 번호 [1,2,3,4,5,6]혈식으로 출력
		
		중복 및 오름차순 정렬로 결과를 출력하세요.
		 -->
		 
		 결과 출력하기 
		 <%= lotto.toString() %>
		
		 }

		 
		 
		 
		 

</body>
</html>