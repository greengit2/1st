<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="resources/login.css"rel="stylesheet" />
 <!--  <script src="resources/login.js" ></script> -->
 <script type="text/javascript">
 
 </script>
<title>Insert title here</title>
</head>
<body>
<form action="/login" method="post">
<div class="login">
	<h1>Login</h1>
    	<input type="text" name="id" placeholder="Username" required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
        <input type="submit"class="btn btn-primary btn-block btn-large" value="로그인">
		<input type="button" value="회원가입"class="btn btn-primary btn-block btn-large" onclick="location.href='http://localhost:8080/member'">
</div>



<!-- 아이디 <input type="text" name="id">
비밀번호 <input type="text" name="password"><br> -->


</form>
</body>
</html>