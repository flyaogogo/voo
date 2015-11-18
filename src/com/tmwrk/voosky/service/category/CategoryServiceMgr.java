package com.tmwrk.voosky.service.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmwrk.voosky.database.dao.impl.CategoryDaoImpl;

@Service("categoryService")
@Transactional
public class CategoryServiceMgr {
	@Autowired
	@Qualifier("categoryDao")
	private CategoryDaoImpl categoryDao ;
}
