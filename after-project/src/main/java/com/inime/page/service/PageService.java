package com.inime.page.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inime.page.dao.PageDao;

@Service
public class PageService {
	@Autowired
	private PageDao dao;
	
}
