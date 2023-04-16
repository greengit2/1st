<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST"> <!-- 메소드 기본값은 GET방식 -->
	<table border="1">
		<tr>
			<td>이름</td>
			<td>
				<input type="text"name="name" value="${detail.name}">
			</td>	
		</tr>
		
		<tr>
			<td>ID</td>
			<!-- id도 input태그가 있어야하지만보낼 수 있고 수정하면 안되니 쪼개서 데이터를 보낸다 -->
			<td>${detail.id}<input type="hidden" name="id" value="${detail.id}"></td>
		</tr>
		
		<tr>
			<td>password</td>
			<td>
				<input type="password" name="password" value="${detail.password}">
			</td>
		</tr>
		
		<tr>
			<td>나이</td>
			<td>"${detail.age}"</td>
		</tr>
		
		<tr>
			<td>주소</td>
			<td>"${detail.addr}"</td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td>"${detail.email}"</td>
		</tr>
		
		<tr>
			<td>휴대푠</td>
			<td>
			<input type="text" name="phone" value="${detail.phone}">	
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="수정" formaction="modify">
				<input type="submit" value="삭제" formaction="remove">
			</td>
		</tr>
	</table>
</form>
</body>
</html>