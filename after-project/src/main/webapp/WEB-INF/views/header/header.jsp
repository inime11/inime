<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		width: 200px;
		height: 100px;
	}
	#mainPage{
		position: relative;
		display: block;
		background: aqua;
		width: 200px;
		height: 100px;
	}
	#mainPage > h3{
		position: absolute;
	}
	.center > a{
		display: table-cell;
		width: 100%;
		height: 100%;
		text-align: center;
		vertical-align: middle;
		margin: 0;
	}
</style>
<link rel="stylesheet" href="css/font.css" />
<link rel="stylesheet" href="css/setting.css" />
</head>
<body>
	<div id="mainPage">
		<h3 class="center"><a href="/">메인</a></h3>
	</div>
</body>
</html>