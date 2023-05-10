package com.inime.skill.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping("/readBoardList.do")
	public String readBoardList(Model model, RedirectAttributes redAtt) {
			ArrayList<Board> list = service.readBoardList();
			if(list.isEmpty()) {
				redAtt.addFlashAttribute("alertMessage", "리스트가 없습니다");
				return "skillPage/createBoard.jsp";
			}
			model.addAttribute("list", list);
		return "skillPage/readBoardList";
	}
	
	@RequestMapping("/readOneBoard.do")
	public String readOneBoard(int boardNo, Model model) {
		Board b = service.readOneBoard(boardNo);
		model.addAttribute("b", b);
		return "board/boardView";
	}
}
