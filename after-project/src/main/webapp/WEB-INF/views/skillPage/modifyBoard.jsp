<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/header.jsp" %>
<div class="container">
<h1>게시판</h1>
	<hr>
	<table border="1">
		<tr>
			<th>번호</th><th>제목</th><th>내용</th>
		</tr>
		<c:forEach items="${list }" var="b" varStatus="i">
		<tr>
		<td>${b.boardNo }</td>
		<td>${b.boardTitle }</td>
		<td>${b.boardContent }</td>
		<th><button onclick="location.href='modifyBoardFrm.do?boardNo=${b.boardNo}'">수정</button></th>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>