package com.tmwrk.voosky.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmwrk.voosky.database.dao.impl.ProductDaoImpl;

@Service("productService")
@Transactional
public class ProductServiceMgr {
	@Autowired
	@Qualifier("productDao")
	private ProductDaoImpl productDao ;
	
}
