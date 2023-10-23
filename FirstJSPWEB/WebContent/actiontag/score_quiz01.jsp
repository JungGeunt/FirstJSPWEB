<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
 <%-- Action tag 문제
 -score_quiz01.jsp 페이지에서 이름, 국어 , 영어, 수학 의 값을 입력받는 코드 구현
 (form태그 -post)
 -score_quiz02.jsp 페이지에서는 score_quiz.jsp 에서 넘엄온 값의 평균을 구하고,
 60점 이상인 경우 socre_quiz03.jsp페이지로 이동
 "xxx님 평균 00점으로 합격"메시지를 출력라고.
  60점 미만인 경우 socre_quiz04.jsp페이지로 이동
  "xxx님 평균 00점으로 불합격"메시지를 출력
  -세션은 사용하지 않아요.--%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>score_quiz01.jsp</title>
	</head>
	<body>
		<form action="score_quiz02.jsp" method="post">
			이름<input type="text" name="name"><br>
			국어<input type="text" name="korean"><br>
			영어<input type="text" name="english"><br>
			수학<input type="text" name="math"><br>
			<input type="submit" value="저장">
		</form>
	</body>
</html>