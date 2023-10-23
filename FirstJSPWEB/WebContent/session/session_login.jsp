<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%
 	if(session.getAttribute("user_id")!=null){//로그인 했다면 웰컴 페이지로
 		response.sendRedirect("session_welcome.jsp");
 	}
 
 %>   
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_login.jsp</title>
		<style>
        body {
            background-color: #ffe5ec;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 150px;
        }

        h2 {
            font-size: 24px;
        }

        form {
            background: #ffc2d1;
            border-radius: 5px;
            padding: 20px;
            max-width: 300px;
            margin: 0 auto;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 5px 0;
            border: none;
            border-radius: 3px;
            background-color: rgba(255, 255, 255, 0.2);
            color: white;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 3px;
            background-color: #edafb8;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #fb6f92;
        }
    </style>
	</head>
	<body>
		<h2>세션 로그인</h2>
		<form action="sesstion_login_ok.jsp" method="post"">
			ID:<input type="text" name="id" ><br>
			PW:<input type="password" name="pw" ><br>
			NICK:<input type="text" name="nick" ><br>
			 <input type="submit" value="로그인">
		 </form>
	</body>
</html>