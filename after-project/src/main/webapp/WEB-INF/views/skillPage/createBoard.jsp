<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/header.jsp" %>
<div class="container">
	<h1><a href="writeBoard.do">글 쓰기</a></h1>
	<h1><a href="readBoard.do">글 읽기</a></h1>
	<h1><a href="deleteBoard.do">글 삭제</a></h1>
	<h1><a href="modifyBoard.do">글 수정</a></h1>
</div>
</body>
</html>