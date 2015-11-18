package com.tmwrk.voosky.module.orm.ibatis;

import java.sql.SQLFeatureNotSupportedException;
import java.util.logging.Logger;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 * 动态数据源调配
 * 
 * @author wfluo
 * @version 2014.08.09
 */
public class DynamicDataSource extends AbstractRoutingDataSource
{

	/**
	 * 在进行DAO操作前，通过上下文环境变量，获得数据源的类型
	 */
	@Override
	protected Object determineCurrentLookupKey()
	{
		// TODO Auto-generated method stub
		return DBContextHolder.getDbType();
	}

	@Override
	public Logger getParentLogger() throws SQLFeatureNotSupportedException {
		// TODO Auto-generated method stub
		return null;
	}

}