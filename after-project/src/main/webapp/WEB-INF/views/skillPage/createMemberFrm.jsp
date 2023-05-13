<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<div class="container">
	<h1>회원가입</h1><hr>
	<form action="/createMember.do" name="createMember" method="post">
		<fieldset>
			<legend>회원가입</legend>
			<input type="text" name="memberID" placeholder="아이디"><br>
			<input type="password" name="memberPW" placeholder="비밀번호"><br>
			<input type="submit" value="회원가입">
		</fieldset>
	</form>
</div>
</body>
</html>