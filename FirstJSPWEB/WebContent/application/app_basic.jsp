<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	// 방문시 자동으로 카운트하는 프로그램
	//1.appplication session하고 사용방법이 거의 비슷
	// 	서버가 동작 할 때 1개 생성되고, 서버가 꺼질떄까지 유지됨.(생명주기가 다름)
	
	int count =0;
 	//visit 라는 application이 있는지 확인하고, 있으면 count에 그 값을 대입
 	if(application.getAttribute("visit") !=null){
 		count =(int)application.getAttribute("visit");
 	}
 
 	count++;
 	
 	//visit 어플리케이션 생성 
 	application.setAttribute("visit", count);
 		
 %>   
		    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		누적값: <%=count %>
	</body>
</html>