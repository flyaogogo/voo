package com.tmwrk.voosky.database.dao;

import java.util.List;
import java.util.Map;

import com.tmwrk.voosky.module.orm.ibatis.PaginationSupportSqlMapClientDaoSupport;

/**
 * @author wfluo
 * @version 2014.08.09
 * @param <T>
 */
public abstract class BaseDao<T> extends PaginationSupportSqlMapClientDaoSupport
{

	public abstract T add(T params);

	public abstract T update(T params);

	public abstract T findById(Map<String, Object> params);

	public abstract List<T> findAll(Map<String, Object> params);

}
