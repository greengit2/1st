<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<tr>
		<td>ID</td>
		<td>패스워드</td>
		<td>주소</td>
		<td>휴대폰</td>
		<td>이메일</td>
		<td>이름</td>
		<td>나이</td>
	</tr>
	<c:forEach items="${memlist}" var ="list">
		<tr>
			<td ><a href="detail?id=${list.id}">${list.id}</a></td> <!-- a태그는 기본적으로 GET방식 바꾸고싶으면 자바스크립트 사용해야함 -->
			<%-- <td><a href="detail.jsp?id=${memlist.id}">${memlist.id}</a></td> --%>
			<td>${list.password}</td>
			<td>${list.addr}</td>
			<td>${list.phone}</td>
			<td>${list.email}</td>
			<td>${list.name}</td>
			<td>${list.age}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>