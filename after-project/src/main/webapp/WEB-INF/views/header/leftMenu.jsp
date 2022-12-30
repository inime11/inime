<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.leftmenu{
		left: 0;
	}
	nav{
		width: 200px;
		background-color: #eee;
		border-right: 1px solid #ddd;
		position: fixed;
		height: 100%;
	}
	h1{
		width: 100%;
		font-size: 18px;
		padding: 20px;
	}
	.menu li a{
		height: 30px;
		line-height: 30px;
		display: block;
		padding: 0 20px;
		font-size: 12px;
		color: #555;
	}
	.menu li a:hover {
		background-color: yellowgreen;
		color: white;
	}
</style>
</head>
<body>
	<div class="left-menu">
		<nav>
			<h1>세팅</h1>
			<ul class="menu nonDeco">
				<li><a href="/fileDown.do" class="nonDeco">파일 다운로드</a>
				<li><a href="/pathSet.do" class="nonDeco">경로 설정</a>
				<li><a href="/fileSet.do" class="nonDeco">파일 설정</a>
				<li><a href="/workspaceSet.do" class="nonDeco">워크스페이스 설정</a>
				<li><a href="/runSet.do" class="nonDeco">실행 및 설정</a>
				<li><a href="/projectSet.do" class="nonDeco">프로젝트 별 설정</a>
			</ul>
		</nav>
	</div>
</body>
</html>