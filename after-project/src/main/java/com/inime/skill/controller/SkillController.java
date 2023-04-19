package com.inime.skill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inime.skill.service.SkillService;
import com.inime.skill.vo.Board;

@Controller
public class SkillController {
	@Autowired
	private SkillService service;
	
	@RequestMapping("/insertBoard.do")
	public String insertBoard(Board b) {
		int result = service.insertBoard(b);
			return "skillPage/writeBoard";
	}
}
