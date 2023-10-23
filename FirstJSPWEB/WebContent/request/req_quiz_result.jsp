<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String cm2 = request.getParameter("kei");
    String kg2 = request.getParameter("weight");
    double cm = Double.parseDouble(cm2);
    double kg = Double.parseDouble(kg2);
    
    double bmi = kg/(cm/100 * cm/100);
    
    //소수점 이하 두자리
    bmi = (int)(bmi*100)/100.0;
    %>
    
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_quiz_result.jsp</title>
	</head>
	<body>
	
		이름: <%=name %><br>
		키: <%=cm %><br>
		몸무게 :<%=kg %><br>
		BMI지수 : <%=bmi %><br>
	
	<%if(bmi>=25){ %>
		과체중 입니다.
	<%}else if(bmi<=18){ %>
		저체중 입니다.
	<%}else{%>
		정상입니다
	<%} %>
	</body>
</html>