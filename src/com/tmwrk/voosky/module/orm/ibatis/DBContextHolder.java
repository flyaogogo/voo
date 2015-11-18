package com.tmwrk.voosky.module.orm.ibatis;

/**
 * 动态数据源调配
 * @author wfluo
 * @version 2014.08.01
 */
public class DBContextHolder
{
	// 线程本地环境
	@SuppressWarnings("rawtypes")
	private static final ThreadLocal contextHolder = new ThreadLocal();

	// 设置数据源类型
	@SuppressWarnings("unchecked")
	public static void setDbType(String dbType)
	{
		contextHolder.set(dbType);
	}

	// 获取数据源类型
	public static String getDbType()
	{
		return (String) contextHolder.get();
	}

	// 清除数据源类型
	public static void clearDbType()
	{
		contextHolder.remove();
	}
}