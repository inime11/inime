<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
</head>
<body>
<div class="container">
	<h1>게시판</h1>
	<hr>
	<table border="1">
		<tr>
			<th>번호</th><th>제목</th><th>내용</th>
		</tr>
		<c:forEach items="${list }" var="b" varStatus="i">
		<tr>
		<td><a href="/readOneBoard.do?boardNo=${b.boardNo }">${b.boardNo }</a></td>
		<td>${b.boardTitle }</td>
		<td>${b.boardContent }</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>