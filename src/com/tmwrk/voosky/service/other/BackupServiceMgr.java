package com.tmwrk.voosky.service.other;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmwrk.voosky.database.dao.impl.BackupDaoImpl;

@Service("backupService")
@Transactional
public class BackupServiceMgr {
	@Autowired
	@Qualifier("backupDao")
	private BackupDaoImpl backupDao ;
	
}
