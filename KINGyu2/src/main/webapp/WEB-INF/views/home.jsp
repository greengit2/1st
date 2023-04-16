<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<!-- css => head태그 안에 하면됨 -->
	<!-- javascript => head태그 안에 하면됨  -->
	<link href="resources/home.css" rel="stylesheet" />
	<script src="resources/home.js" ></script>
</head>
 
<body>
<main class="main">
  <section class="home">
    <h1>Welcome to the <span>MyPage</span></h1>
    <h1><span>안녕하세요 </span></h1>
    <button id="sign-up" class="btn" onclick="location.href='http://localhost:8080/login'">시작하기</button>
  </section>
</main>
</body>
</html>