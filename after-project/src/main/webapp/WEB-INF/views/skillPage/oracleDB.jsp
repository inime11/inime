<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오라클 DB</title>
</head>
<body>
<h1>오라클 DB</h1>
<p>오라클 설치 후</p>
<pre>
Oracle SQL Developer에서 admin,
CREATE USER afterworkspace IDENTIFIED BY 1234;	//유저 만들기
GRANT CONNECT, RESOURCE TO afterworkspace;		//접속 권한 설정
</pre>
<pre>
src/spring/appservlet/servlet-context.xml
DB 접속 정보를 저장하는 객체 생성
	&ltbeans:bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource"&gt			
		&ltbeans:property name="driverClassName" value="oracle.jdbc.driver.OracleDriver"/&gt			
		&ltbeans:property name="url" value="jdbc:oracle:thin:@127.0.0.1:1521:xe"/&gt					//접속 자기 자신
		&ltbeans:property name="username" value="afterwork"/&gt								//ID value 값을 바꿀 것
		&ltbeans:property name="password" value="1234"/&gt									//PW value 값을 바꿀 것
	&lt/beans:bean&gt
</pre>
<pre>
Mybatis 설정용 객체
&ltbeans:bean id="sqlSession" class="org.mybatis.spring.SqlSessionFactoryBean"&gt
		&ltbeans:property name="dataSource" ref="dataSource"/&gt
		&ltbeans:property name="configLocation" value="classpath:mybatis-config.xml"/&gt
		&ltbeans:property name="mapperLocations" value="classpath:/mapper/*SQL.xml"&gt&lt/beans:property&gt
	&lt/beans:bean&gt
</pre>
<pre>
DB작업을 수행하는 객체
&ltbeans:bean id="sqlSessionTemplate" class="org.mybatis.spring.SqlSessionTemplate"&gt
		&ltbeans:constructor-arg ref="sqlSession"/&gt
	&lt/beans:bean&gt
</pre>
</body>
</html>