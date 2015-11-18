package com.tmwrk.voosky.service.nav;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmwrk.voosky.database.dao.impl.NavigationDaoImpl;

@Service("navService")
@Transactional
public class NavServiceMgr {
	@Autowired
	@Qualifier("navDao")
	private NavigationDaoImpl navDao ;
	
	
}
