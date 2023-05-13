package com.inime.skill.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inime.skill.vo.Board;
import com.inime.skill.vo.Member;

@Repository
public class SkillDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertBoard(Board b) {
		int result = sqlSession.insert("board.insertBoard", b);
		return result;
	}

	public ArrayList<Board> readBoardList() {
		List list = sqlSession.selectList("board.readBoardList");
		return (ArrayList<Board>)list;
	}

	public Board readOneBoard(int boardNo) {
		Board b = sqlSession.selectOne("board.readOneBoard", boardNo);
		return b;
	}

	public int deleteOneBoard(int boardNo) {
		int result = sqlSession.delete("board.deleteOneBoard", boardNo);
		return result;
	}

	public int modifyOneBoard(Board b) {
		int result = sqlSession.update("board.modifyOneBoard", b);
		return result;
	}

	public int createMember(Member m) {
		int result = sqlSession.insert("member.createMember", m);
		return result;
	}

	public Member selectOneMember(Member m) {
		Member member = sqlSession.selectOne("member.login", m);
		return member;
	}

	public int updatePW(Member m) {
		int result = sqlSession.update("member.updatePW", m);
		return result;
	}

}
