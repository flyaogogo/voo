package com.tmwrk.voosky.web.action;

import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * base action
 * @author wfluo
 * @version 2014.08.01
 */
@SuppressWarnings("serial")
public class BaseAction extends ActionSupport implements ServletRequestAware, ServletResponseAware
{
	public static final String LOGIN_USER_KEY = "portalLoginUser";

	protected Log log = LogFactory.getLog(getClass());

	protected HttpServletRequest request;

	protected HttpServletResponse response;

	protected String apiKey;

	protected String secretKey;

//	protected User user;

	protected String managementServerUrl;

	protected String managementServerConsoleUrl;

	public BaseAction()
	{
		/*user = (User) ActionContext.getContext().getSession().get("user");
		if (user != null)
		{
			apiKey = user.getApiKey();
			secretKey = user.getSecretKey();
			managementServerUrl = user.getManagementServerUrl();
			managementServerConsoleUrl = user.getManagementConsoleUrl();
		}*/
	}

	/**
	 * 验证参数是否为null 或者""
	 * @Description: TODO
	 * @Date: 2014-7-16
	 */
	protected Map<String, String> verifyRequestParams(Map<String, String> params)
	{
		Collection<String> values = params.values();
		for (String string : values)
		{
			if (StringUtils.isEmpty(string))
			{
				return null;
			}
		}
		return params;
	}

	/*protected String getRemoteIp()
	{
		return WebUtils.getRemoteIpAddress();
	}
*/
	public void setServletRequest(HttpServletRequest request)
	{
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response)
	{
		this.response = response;
	}

/*	//从session中取user值
	public User getUserBySession()
	{
		return (User) ActionContext.getContext().getSession().get("user");
	}*/

}
