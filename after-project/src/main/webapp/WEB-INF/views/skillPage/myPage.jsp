<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내정보</title>
</head>
<body>
<div class="container">
	<h1>내정보</h1>
	<hr>
	<table border="1">
		<tr>
			<th>회원번호: </th>
			<td>${m.memberNo }</td>
		</tr>
		<tr>
			<th>아이디: </th>
			<td>${m.memberID }</td>
		</tr>
		<tr>
			<th>비밀번호: </th>
			<form action="/updatePW.do" name="updatePW" method="post">
			<input type="hidden" name="memberNo" value="${m.memberNo }">
			<input type="hidden" name="memberID" value="${m.memberID }">
			<input type="hidden" name="joinDate" value="${m.joinDate }">
			<td><input type="text" name="memberPW" value="${m.memberPW }"></td>
			<td><input type="submit" value="수정"></td>
			</form>
		</tr>
		<tr>
			<th>가입일: </th>
			<td>${m.joinDate }</td>
		</tr>
	</table>
</div>
</body>
</html>