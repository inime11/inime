<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
</head>
<body>
<div class="container">
<h1>게시글 상세보기</h1>
<table border="1">
	<tr>
		<th>글번호</th>
		<td>${b.boardNo }</td>
	</tr>
	<tr>
		<th>글제목</th>
		<td>${b.boardTitle }</td>
	</tr>
	<tr>
		<th>내용</th>
		<td colspan="4">${b.boardContent }</td>
	</tr>
</table>
</div>
</body>
</html>