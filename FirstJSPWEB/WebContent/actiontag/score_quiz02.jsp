<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
   <%
   request.setCharacterEncoding("utf-8");
   String name =request.getParameter("name");
   String korean =request.getParameter("korean");
   String english =request.getParameter("english");
   String math =request.getParameter("math");
   
   //int math= Integer.parseInt(request.getParameter("math"));
  
  
  int kor = Integer.parseInt(korean);  
  int eng = Integer.parseInt(english);
  int math2 = Integer.parseInt(math);
  
  double avg = (double)(kor +eng + math2)/3;
  
  if(avg>=60){%>
	  <jsp:forward page="score_quiz03.jsp">
    <jsp:param value="<%=avg %>" name="avg"/>
    </jsp:forward>
  <% }else{%>
	   <jsp:forward page="score_quiz04.jsp">
     <jsp:param value="<%=avg %>" name="avg"/>
    </jsp:forward>
  <% }
   %> 
   
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	
	</body>
</html>