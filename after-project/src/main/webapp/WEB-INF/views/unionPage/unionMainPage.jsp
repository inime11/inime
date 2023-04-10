<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유니온 메인 페이지</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/header.jsp"%>
<div class="container">
<form action=""></form>
	<label for="union-grade">유니온 등급</label>
	<select id="unionGrade" name="grade" onchange="unionGradeSelect()">
		<option value="노비스">
		<option value="베테랑">
		<option value="마스터">
		<option value="그랜드 마스터">
		<option value="슈프림">
	</select>

</div>
<script type="text/javascript">
	function unionGradeSelect(){
		
	}
</script>
</body>
</html>