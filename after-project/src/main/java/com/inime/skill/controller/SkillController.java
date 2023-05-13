package com.inime.skill.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.inime.skill.service.SkillService;
import com.inime.skill.vo.Board;
import com.inime.skill.vo.Member;

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
		return "skillPage/readOneBoard";
	}
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(Model model) {
		ArrayList<Board> list = service.readBoardList();
		model.addAttribute("list", list);
		return "skillPage/deleteBoard";
	}
	
	@RequestMapping("/deleteOneBoard.do")
	public String deleteOneBoard(int boardNo, RedirectAttributes redAtt, Model model) {
		int result = service.deleteOneBoard(boardNo);
		ArrayList<Board> list = service.readBoardList();
		if(list.isEmpty()) {
			redAtt.addFlashAttribute("alertMessage", "리스트가 없습니다");
			return "skillPage/createBoard.jsp";
		}
		model.addAttribute("list", list);
		return "skillPage/deleteBoard";
	}
	
	@RequestMapping(value = "modifyBoard.do")
	public String modifyBoard(Model model, RedirectAttributes redAtt) {
		ArrayList<Board> list = service.readBoardList();
		if(list.isEmpty()) {
			redAtt.addFlashAttribute("alertMessage", "리스트가 없습니다");
			return "skillPage/createBoard.jsp";
		}
		model.addAttribute("list", list);
		return "skillPage/modifyBoard";
	}
	
	@RequestMapping(value = "modifyBoardFrm.do")
	public String modifyBoardFrm(Model model, int boardNo) {
		Board b = service.readOneBoard(boardNo);
		model.addAttribute("b", b);
		return "skillPage/modifyBoardFrm";
	}
	
	@RequestMapping(value = "modifyOneBoard.do")
	public String modifyBoard(Board b, RedirectAttributes redAtt, Model model) {
		int result = service.modifyOneBoard(b);
		ArrayList<Board> list = service.readBoardList();
		if(list.isEmpty()) {
			redAtt.addFlashAttribute("alertMessage", "리스트가 없습니다");
			return "skillPage/createBoard.jsp";
		}
		model.addAttribute("list", list);
		return "skillPage/modifyBoard";
	}
	
	@RequestMapping(value = "createMember.do")
	public String createMember(Member m) {
		int result = service.createMember(m);
		return "skillPage/loginMain";
	}
	
	@RequestMapping(value = "login.do")
	public String login(Member m, HttpServletRequest request, HttpSession session, Model model) {
		Member member = service.selectOneMember(m);
		if(member == null) {
			request.setAttribute("msg", "아이디 비밀번호를 확인해주세요");
			request.setAttribute("url", "/loginMain.do");
			return "common/alert";
		}else {
			session.setAttribute("member", member);
		}
		model.addAttribute("m", member);
		return "skillPage/myPage";
	}
	
	@RequestMapping(value = "updatePW.do")
	public String updatePW(Member m, Model model) {
		int result = service.updatePW(m);
		Member member = service.selectOneMember(m);
		model.addAttribute("m",member);
		return "skillPage/myPage";
	}
	
}
