<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 상세 페이지</title>
</head>
<body>
<div class="container">
<h1>게시글 수정</h1>
<div>
		<form action="/modifyBoard.do" name="modifyBoard" method="post">
			<fieldset>
				<c:forEach items="${list }" var="b" varStatus="i">
					<legend>수정</legend>
						글번호: ${b.boardNo } 
						제목: <input type="text" name="boardTitle">${b.boardTitle }<br><br>
						내용: <textarea rows="5" cols="50" name="boardContent">${b.boardContent }</textarea>
						<input type="submit" value="수정">
						<input type="reset" value="리셋"><br><br>
				</c:forEach>
			</fieldset>
		</form>	
	</div>
</div>
</body>
</html>