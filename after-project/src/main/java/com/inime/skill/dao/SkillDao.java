package com.inime.skill.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inime.skill.vo.Board;

@Repository
public class SkillDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertBoard(Board b) {
		int result = sqlSession.insert("board.insertBoard", b);
		return result;
	}

}
