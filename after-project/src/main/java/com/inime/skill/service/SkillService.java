package com.inime.skill.service;

import java.util.ArrayList;

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
		if(result > 0) {
			return result;
		}else {
			return -1;
		}
	}

	public ArrayList<Board> readBoardList() {
		ArrayList<Board> list = dao.readBoardList();
		return list;
	}

	public Board readOneBoard(int boardNo) {
		Board b = dao.readOneBoard(boardNo);
		return b;
	}

	public int deleteOneBoard(int boardNo) {
		int result = dao.deleteOneBoard(boardNo);
		return result;
	}

	public int modifyOneBoard(int boardNo) {
		int result = dao.modifyOneBoard(boardNo);
		return result;
	}

}
