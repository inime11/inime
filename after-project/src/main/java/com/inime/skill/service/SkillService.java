package com.inime.skill.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inime.skill.dao.SkillDao;
import com.inime.skill.vo.Board;

@Service
public class SkillService {
	@Autowired
	private SkillDao dao;

	public int insertBoard(Board b) {
		int result = dao.insertBoard(b);
		return 0;
	}

}
