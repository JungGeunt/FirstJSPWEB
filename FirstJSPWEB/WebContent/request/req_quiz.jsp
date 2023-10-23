<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_quiz</title>
		</head>
	<body>
		<%--
		1.form 태그를 이용하여 post 형식으로 이름, 키와 몸무게를 입력받음
		2.req_quiz_result.jsp 로 데이터를 정송
		3.해당 페이지에서는 넘어간 값을 BMI 지수로 처리
		4.BMI 공식 =kg/(cm/100* cm/100)
		=>String 형식으로 넘어가기 때문에 파싱 처리해야함.
		req_quiz_result.jsp 에서는 이름,키 ,몸무게BMI 지수를 출력
		if를 통해서 BMI지수가 25이상이면 과체중, 18이하라면 저체중, 나머지는 정상으로 출력
		 --%>
		
		<form action="req_quiz_result.jsp" method="post">
		이름:<input type="text" size="10" name="name"><br>
		키:<input type="text" size="10" name="kei"><br>
		몸무게:<input type="text" size="10" name="weight"><br>
		<input type="submit" value="계산">
		</form>
	</body>
</html>