package com.inime.page.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PageDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
}
