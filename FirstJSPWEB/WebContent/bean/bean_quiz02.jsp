<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	1. 전달 받은 내용을 받아서 처리
	2. pw 와 pw_cherck 가 같다면, USer객체 form에서 넘어온  id,pw를 저장하소,
		User객체를 quiz03.jsp로 넘김.
		화면에 출력할 내용: "id님의 회원가입을 축하합니다. 비밀번호는 xxx입니다."
		3.pw와 pw_check가 다르다면,quiz04.jsp로 이동하여 "회원 가입에 실패했습니다."룰 츌력
 --%>
 
 <% 
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
 	String pw_check= request.getParameter("pw_check");
 	
 	if(pw.equals(pw_check)){%>
 		<jsp:useBean id="user" class="com.bean.User" scope="request"/>
 		<jsp:setProperty property="id" name="user" value="<%=id %>"/>
 		<jsp:setProperty property="pw" name="user" value="<%=pw %>"/>
 		<jsp:setProperty property="pw_check" name="user" value="<%=pw_check %>"/>
 		<jsp:forward page="bean_quiz03.jsp"/>
 	<%}else{%>
 		<jsp:forward page="bean_quiz04.jsp"/>
 	<% }
 	
  %>
 
  
 <%-- 선생님 버전
 		request.setCharacterEncoding("utf-8");
 		String id = request.getParameter("id");
	 	String pw = request.getParameter("pw");
	 	String pw_check= request.getParameter("pw_check");
	 	
	 	if(pw.equals(pw_check)){
 		 User user = new User();
 		 user.setId(id);
 		 user.setPw(pw)
 		 
 		 request.setAttribute("user", user);
	 	RequestDispatcher dp = request.getRequestDispatcher("bean_quiz03.jsp");
 		dp.forward(request, response);
 		 
 		}else{
 		response.sendRedirect("bean_quiz04.jsp");
 			
 		}
  --%>
