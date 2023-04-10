<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트별 설정</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/header.jsp" %>
<%@ include file="/WEB-INF/views/header/leftMenu.jsp" %>
	<div class="container">
		<h1 class="font3">프로젝트마다 설정해줄것</h1>
		<pre class="font4 black">
프로젝트 만들때 spring legacy project 선택.
프로젝트중 pom.xml에서 overview에서 java-version: 1.8, 그밑에있는거 5.0.6.RELEASE로 변경

-프로젝트 우클릭 프로퍼티스 project facets에서 JAVA 1.8로 변경, Runtimes에서 톰캣 선택
-src - main - webapp - WEB-INF - lib만들어서 jstl 넣기
-서버 설정에서 path 바꿔주기(/iei -> /)로		
		</pre>
	</div>
</body>
</html>