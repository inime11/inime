<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/header.jsp" %>
<div class="container">
	<div>
		<h2>1.필요한 정보 생각하기</h2>
		<p>ex) 게시판 번호, 글 제목, 글 내용</p>
		<h2>2. DB에서 테이블 만들기</h2>
		<pre>ex )
	CREATE TABLE BOARD(
    BOARD_NO NUMBER PRIMARY KEY,
    BOARD_TITLE VARCHAR2(10),
    BOARD_CONTENT VARCHAR2(50)
	);</pre>
		<h2>3. VO만들기</h2>
		<pre>ex)
	@NoArgsConstructor
	@AllArgsConstructor
	@Data
	public class Board {
		private int boradNo;
		private String boradTitle;
		private String boradContent;
	}</pre>
	<h2>4.입력 방법 생각하기</h2>
	<pre>ex) form형식 등등</pre>
	</div>
	<div>
		<form action="/insertBoard.do" name="insertBoard" method="post">
			<fieldset>
				<legend>글쓰기</legend>
					제목: <input type="text" name="boardTitle"><br><br>
					내용: <textarea rows="5" cols="50" placeholder="예시 입니다." name="boardContent"></textarea>
					<input type="submit" value="쓰기">
					<input type="reset" value="리셋"><br><br>
			</fieldset>
		</form>	
	</div>
	<div>
		<h2>5. 입력 후 처리</h2>
		<h3>1.Controller</h3>
		<pre>ex) @RequestMapping("/insertBoard.do")
	public String insertBoard(Board b) {
		int result = service.insertBoard(b);
			return "skillPage/writeBoard";
	}
	}
		</pre>
		<h3>2.Service</h3>
		<pre>public int insertBoard(Board b) {
		int result = dao.insertBoard(b);
		if(result > 0) {
			return result;
		}else {
			return -1;
		}
	}
		</pre>
		<h3>3.DAO</h3>
		<pre>public int insertBoard(Board b) {
		int result = sqlSession.insert("board.insertBoard", b);
		return result;
	}
		</pre>
		<h3>4.SQL</h3>
		<pre>insert id="insertBoard" parameterType="b"
		insert into board_tbl
		values board_seq.nextval, {boardTitle}, {boardContent}
		</pre>
	</div>
</div>
</body>
</html>