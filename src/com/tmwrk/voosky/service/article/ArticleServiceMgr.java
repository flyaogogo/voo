package com.tmwrk.voosky.service.article;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmwrk.voosky.database.dao.impl.ArticleDaoImpl;

@Service("articleService")
@Transactional
public class ArticleServiceMgr {

	@Autowired
	@Qualifier("articleDao")
	private ArticleDaoImpl articleDao ;
	
}
