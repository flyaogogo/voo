package com.tmwrk.voosky.module.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 登录拦截器
 * @author wfluo
 * @version 2014.08.01
 */
@SuppressWarnings("serial")
public class LoginInterceptor extends AbstractInterceptor
{
	public static final String GOING_TO_URL_KEY = "goingToUrl";

//	private Log log = LogFactory.getLog(this.getClass());

	@Override
	public String intercept(ActionInvocation invocation) throws Exception
	{
		return invocation.invoke();
	}
}
