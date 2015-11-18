package com.tmwrk.voosky.module.orm.ibatis;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.engine.execution.SqlExecutor;
import com.ibatis.sqlmap.engine.impl.ExtendedSqlMapClient;
import com.tmwrk.voosky.module.util.ReflectionUtils;

/**
 * @author wfluo
 * @version 2014.08.09
 */
@SuppressWarnings("deprecation")
public abstract class PaginationSupportSqlMapClientDaoSupport extends SqlMapClientDaoSupport
{
	@Autowired
	private SqlExecutor sqlExecutor;
	@Autowired
	private SqlMapClient sqlMapClient;

	public void setSqlExecutor(SqlExecutor sqlExecutor)
	{
		this.sqlExecutor = sqlExecutor;
	}

	public void setEnableLimit(boolean enableLimit)
	{
		if (sqlExecutor instanceof LimitSqlExecutor)
		{
			((LimitSqlExecutor) sqlExecutor).setEnableLimit(enableLimit);
		}
	}

	@PostConstruct
	public void initialize() throws Exception
	{
		super.setSqlMapClient(sqlMapClient);
		if (sqlExecutor != null)
		{
			SqlMapClient sqlMapClient = getSqlMapClientTemplate().getSqlMapClient();
			if (sqlMapClient instanceof ExtendedSqlMapClient)
			{
				ReflectionUtils.setFieldValue(((ExtendedSqlMapClient) sqlMapClient).getDelegate(), "sqlExecutor",
						sqlExecutor);
			}
		}
	}
}
