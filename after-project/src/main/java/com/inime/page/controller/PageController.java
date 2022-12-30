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
	public String springTool() {
		return "settingPage/fileSet";
	}
}
