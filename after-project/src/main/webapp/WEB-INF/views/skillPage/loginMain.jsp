<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 메인화면</title>
</head>
<body>
<div class="container">
	<h1>로그인</h1><hr>
	<form action="/login.do" method="post">
		<fieldset>
			<legend>로그인</legend>
			<input type="text" name="memberID" placeholder="아이디"><br>
			<input type="password" name="memberPW" placeholder="비밀번호"><br>
			<input type="submit" value="로그인">
		</fieldset>
	</form>
	<button onclick="location.href='/createMemberFrm.do'">회원가입</button>
</div>
</body>
</html>