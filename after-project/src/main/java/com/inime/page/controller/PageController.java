package com.inime.page.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inime.page.service.PageService;

@Controller
public class PageController {
	@Autowired
	private PageService service;
	
	@RequestMapping(value = "/settingPage.do")
	public String settingPage() {
		return "settingPage/settingMainPage";
	}
	@RequestMapping(value = "/fileDown.do")
	public String apacheMaven() {
		return "settingPage/fileDown";
	}
	@RequestMapping(value = "/pathSet.do")
	public String pathSet() {
		return "settingPage/pathSet";
	}
	@RequestMapping(value = "/fileSet.do")
	public String fileSet() {
		return "settingPage/fileSet";
	}
	@RequestMapping(value = "/workspaceSet.do")
	public String workspaceSet() {
		return "settingPage/workspaceSet";
	}
	@RequestMapping(value = "/runSet.do")
	public String runSet() {
		return "settingPage/runSet";
	}
	@RequestMapping(value = "/projectSet.do")
	public String projectSet() {
		return "settingPage/projectSet";
	}
}
