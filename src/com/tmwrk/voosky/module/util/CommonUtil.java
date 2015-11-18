package com.tmwrk.voosky.module.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tmwrk.voosky.module.log.LogWriter;
import com.tmwrk.voosky.module.orm.ibatis.DBContextHolder;

/**
 * 提供一些常用的方法
 * 
 * @author wfluo
 * @version 2014.08.01
 * 
 */
public class CommonUtil
{

	private static final Log log = LogFactory.getLog(CommonUtil.class);

	/**
	 * 
	 * 对序列号进行初始化，如果>8位则不管，如果<8位，则左补0
	 * 
	 * @param numberToFormat
	 * @return
	 */
	public static String formatSequence(long numberToFormat)
	{
		DecimalFormat format = new DecimalFormat("00000000");
		return format.format(numberToFormat);
	}

	/**
	 * 将BigDecimal 格式化为 0.00的格式
	 * 
	 * @param big
	 * @return
	 */
	public static String formatBigDecimal(BigDecimal big)
	{
		if (big == null)
		{
			return "";
		}
		DecimalFormat df = new DecimalFormat("0.00");
		return df.format(big);
	}

	/**
	 * 将String 格式化为 0.00的格式
	 * 
	 * @param big
	 * @return
	 */
	public static String formatBigDecimal(String big)
	{

		if (big == null)
		{
			return "";
		}
		DecimalFormat d = new DecimalFormat("0.00");

		BigDecimal temp = new BigDecimal(big);

		return d.format(temp);
	}

	/**
	 * 格式化数字
	 * 
	 * @param strData
	 *            字符串数据
	 */
	public static long parseLong(Object strData)
	{
		if (strData == null || strData.toString().length() == 0)
		{
			return 0;
		}
		else
		{
			try
			{
				return Long.parseLong(strData.toString());
			}
			catch (Exception e)
			{
				return 0;
			}
		}
	}

	/**
	 * 获取远程用户IP地址
	 * 
	 * @param request
	 * @return
	 */
	public static final String getRemoteAddr(HttpServletRequest request)
	{
		String rip = request.getRemoteAddr();
		String xff = request.getHeader("X-Forwarded-For");
		String ip;
		if (xff != null && xff.length() != 0)
		{
			int px = xff.indexOf(',');
			if (px != -1)
			{
				ip = xff.substring(0, px);
			}
			else
			{
				ip = xff;
			}
		}
		else
		{
			ip = rip;
		}
		return ip.trim();
	}

	public static final String getLocalIpAddress()
	{
		try
		{
			String localIp = InetAddress.getLocalHost().getHostAddress();
			if (log.isDebugEnabled())
			{
				log.debug("local ip address: " + localIp);
			}
			return localIp;
		}
		catch (UnknownHostException e)
		{
			LogWriter.error("Get Local IP Address failed, caused by:" + e, CommonUtil.class.getName());
			return null ;
		}
	}

	/*
	 * 将16进制字符串转换为字符数组
	 */
	public static final byte[] hexStrToBytes(String s)
	{
		byte[] bytes = new byte[s.length() / 2];
		for (int i = 0; i < bytes.length; i++)
		{
			bytes[i] = (byte) Integer.parseInt(s.substring(2 * i, 2 * i + 2), 16);
		}

		return bytes;
	}

	/*
	 * 将字符数组转换为16进制字符串
	 */
	public static final String bytesToHexStr(byte[] bcd)
	{
		StringBuffer s = new StringBuffer(bcd.length * 2);

		for (int i = 0; i < bcd.length; i++)
		{
			s.append(bcdLookup[(bcd[i] >>> 4) & 0x0f]);
			s.append(bcdLookup[bcd[i] & 0x0f]);
		}

		return s.toString();
	}

	private static final char[] bcdLookup =
	{ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

	/**
	 * 判断是不是为long
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isLong(String str)
	{
		try
		{
			new Long(str);
		}
		catch (Exception e)
		{

			return false;
		}

		return true;
	}

	/**
	 * 检查给定日期是否大于当前日期，如果大于返回：ture 否则返回false
	 * 
	 * @param accountExpiredTime
	 * @return
	 */
	public static boolean checkExpiredDate(Timestamp accountExpiredTime)
	{
		// 当给定的日期小于等于当前日期，就认为是
		// 将日期转换为yyyyMMdd的方式比较
		try
		{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			String expired = sdf.format(accountExpiredTime);
			String current = sdf.format(System.currentTimeMillis());
			Timestamp expired_stamp = new Timestamp(sdf.parse(expired).getTime());
			Timestamp current_stamp = new Timestamp(sdf.parse(current).getTime());
			if (expired_stamp.compareTo(current_stamp) > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch (Exception e)
		{
			LogWriter.error("check expired Date,accountExpiredTime=" + accountExpiredTime + 
					",error info:" + e , CommonUtil.class.getName());
			return false;
		}
	}


	/**
	 * 为敏感字符串加上型号
	 * 
	 * @param plainStr
	 * @param headLength
	 *            头几位显示
	 * @para tailLength 末几位显示
	 * @return
	 */
	public static String getSecretNumberWithStart(String plainStr, int headLength, int tailLength)
	{
		return getSecretNumberWithStart(plainStr, headLength, tailLength, 4);
	}

	/**
	 * 为敏感字符串加上型号
	 * 
	 * @param plainStr
	 * @param headLength
	 *            头几位显示
	 * @param tailLength
	 *            末几位显示
	 * @param starLength
	 *            星号的数量
	 * @return
	 */
	public static String getSecretNumberWithStart(String plainStr, int headLength, int tailLength, int starLength)
	{
		StringBuilder starString = new StringBuilder("");
		for (int i = 1; i <= starLength; i++)
		{
			starString.append("*");
		}
		if (null == plainStr || "".equals(plainStr))
		{
			return "";
		}
		else if (plainStr.length() <= tailLength)
		{
			return plainStr;
		}
		else
		{
			return plainStr.substring(0, headLength) + starString
					+ plainStr.substring(plainStr.length() - tailLength, plainStr.length());
		}
	}

	public static String maskAcountId(String accountId)
	{
		String userName = accountId.indexOf("@") > 0 ? accountId.substring(0, accountId.indexOf("@")) : accountId;
		String domainName = accountId.indexOf("@") > 0 ? accountId.substring(accountId.indexOf("@")) : "";
		String maskString = "";
		if (StringUtils.isNotBlank(userName) && userName.length() > 2)
		{
			maskString = getSecretNumberWithStart(userName, 2, 0, 4);
		}
		else
		{
			maskString = getSecretNumberWithStart(userName, 1, 0, 4);
		}
		return maskString + domainName;
	}

	/**
	 * 获得完整URL,比如产品返回的URL
	 * 
	 * @return
	 */
	public static String generateURL(String urlHead, String urlTail)
	{

		String webUrl = "";
		try
		{
			String[] productUrl = urlHead.trim().split("\\?");
			// URL不含有问号 ？
			if (productUrl.length == 1)
			{
				urlHead = productUrl[0] + "?";
			}
			else if (productUrl.length == 2)
			{
				if (productUrl[1].length() != 1)// 以问号结尾
				{
					urlTail = "&" + urlTail;
				}
			}
			else
			{
				return null;
			}

			webUrl = urlHead + urlTail;
		}
		catch (Exception e)
		{
			LogWriter.error("generateURL failed, caused by:" + e, CommonUtil.class.getName());
			return null;
		}
		return webUrl;

	}

	/**
	 * 处理wap的url
	 * 
	 * @param orgUrl
	 * @return
	 */
	public static String completeWapForm(String orgUrl)
	{
		String htmlBegin = "<wml><card><onevent type=\"onenterforward\"><go method='POST' href='";
		String htmlEnd = "' >\n";
		String completeHead = "";
		String formBody = "";
		// 普通url
		if (-1 == orgUrl.indexOf("&"))
		{
			if (orgUrl.endsWith("?"))
			{
				orgUrl = orgUrl.substring(0, orgUrl.indexOf("?"));
			}
			completeHead = htmlBegin + orgUrl + htmlEnd;
			return completeHead;
		}
		// 带参数的url
		if (-1 != orgUrl.indexOf("&") && -1 != orgUrl.indexOf("?"))
		{
			// 按？分割
			String[] urlArr = orgUrl.split("\\?");
			if (2 == urlArr.length)
			{
				// 拼接串
				completeHead = htmlBegin + urlArr[0] + htmlEnd;
				// 按照"&" split
				String[] paras = urlArr[1].split("\\&");
				// html += "<input type='hidden' name='notifyType' value=" +
				// sendOrder.notifyType + ">\n";
				// 按照 "= "split
				for (int i = 0; i < paras.length; i++)
				{
					if (!"".equals(paras[i]))
					{
						String[] equalPara = paras[i].split("\\=");
						// 拼接 formBody 的 input
						formBody += "<postfield name='" + equalPara[0] + "' value='" + equalPara[1] + "'/>\n";
					}
				}
			}
			else
			{
				LogWriter.error("completeForm,产品返回参数不合法!", CommonUtil.class.getName());
				return null;
			}
		}
		// 先按?进行解析
		return completeHead + formBody;
	}

	/**
	 * 处理类似http://202.108.42.77:8000//xyq/cgi-bin/paynotify.py?act=
	 * buy_show_equip_info&equip_id=92 这种含有&符号的返回URL；我们将其拼接成form
	 * 
	 * @param orgUrl
	 */
	public static String completeForm(String orgUrl)
	{

		// 先判断是否同时含有 &和? 如果同时含有我们就我们就认为是 返回url需要有附加参数
		String htmlBegin = "<html><head></head><body><form action='";
		String htmlEnd = "' method='POST'>\n";
		String completeHead = "";
		String formBody = "";
		// 普通url
		if (-1 == orgUrl.indexOf("&"))
		{
			if (orgUrl.endsWith("?"))
			{
				orgUrl = orgUrl.substring(0, orgUrl.indexOf("?"));
			}
			completeHead = htmlBegin + orgUrl + htmlEnd;
			return completeHead;
		}
		// 带参数的url
		if (-1 != orgUrl.indexOf("&") && -1 != orgUrl.indexOf("?"))
		{
			// 按？分割
			String[] urlArr = orgUrl.split("\\?");
			if (2 == urlArr.length)
			{
				// 拼接串
				completeHead = htmlBegin + urlArr[0] + htmlEnd;
				// 按照"&" split
				String[] paras = urlArr[1].split("\\&");
				// html += "<input type='hidden' name='notifyType' value=" +
				// sendOrder.notifyType + ">\n";
				// 按照 "= "split
				for (int i = 0; i < paras.length; i++)
				{
					if (!"".equals(paras[i]))
					{
						String[] equalPara = paras[i].split("\\=");
						// 拼接 formBody 的 input
						formBody += "<input type='hidden' name='" + equalPara[0] + "' value='" + equalPara[1] + "'>\n";
					}
				}
			}
			else
			{
				LogWriter.error("completeForm,产品返回参数不合法!", CommonUtil.class.getName());
				return null;
			}
		}
		// 先按?进行解析

		return completeHead + formBody;

	}

	/**
	 * 生成min到max之间的随机数
	 * @param min
	 * @param max
	 * @return
	 */
	public static int getRandomNumber(int min, int max)
	{
		int result = min + (int) (Math.random() * (max - min));
		return result;
	}

	/**
	 * 
	 * @return
	 */
	public static int getControlRandomNumber()
	{
		//1-10出现概率为0.75
		//11-13 出现概率0.15
		//14-15 出现概率为0.10
		double rateA = 0.75;
		double rateB = 0.15;
		double rateC = 0.10;
		double randomNumber;
		randomNumber = Math.random();
		if (randomNumber >= 0 && randomNumber <= rateA)
		{
			return getRandomNumber(1, 10);
		}
		else if (randomNumber >= rateA && randomNumber <= (rateA + rateB))
		{
			return getRandomNumber(11, 13);
		}
		else if (randomNumber >= (rateA + rateB) && randomNumber <= (rateA + rateB + rateC))
		{
			return getRandomNumber(14, 15);
		}
		else
		{
			return getRandomNumber(1, 10);
		}
	}

	/**
	 * 随机数生成，适用于抽奖等
	 * @return ture,false
	 */
	public static boolean getControlRandomNumber(double rate)
	{
		//中奖概率
		double randomNumber;
		randomNumber = Math.random();
		if (randomNumber >= 0 && randomNumber <= rate)
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	/**
	 * 获得完整的错误信息
	 * @param e
	 * @return
	 */
	public static String getFullStackError(Exception e)
	{
		StringWriter sw = new StringWriter();
		PrintWriter ps = new PrintWriter(sw);
		e.printStackTrace(ps);
		return sw.toString();
	}

	//短信账号加密
	public static String maskAcountIdForMessage(String accountId)
	{
		String userName = accountId.indexOf("@") > 0 ? accountId.substring(0, accountId.indexOf("@")) : accountId;
		String maskString = "";
		if (StringUtils.isNotBlank(userName) && userName.length() > 2)
		{
			maskString = getSecretNumberWithStart(userName, 2, 0, 1);
		}
		else
		{
			maskString = getSecretNumberWithStart(userName, 1, 0, 1);
		}
		return maskString;
	}

	/**
	 * 生成随机的大小写字母加数字组合
	 * @param length
	 * @return
	 */
	public static String randomCharAndNum(int length)
	{
		String val = "";

		Random random = new Random();
		for (int i = 0; i < length; i++)
		{
			String charOrNum = random.nextInt(2) % 2 == 0 ? "char" : "num"; // 输出字母还是数字     

			if ("char".equalsIgnoreCase(charOrNum)) // 字符串     
			{
				int choice = random.nextInt(2) % 2 == 0 ? 65 : 97; //取得大写字母还是小写字母     
				val += (char) (choice + random.nextInt(26));
			}
			else if ("num".equalsIgnoreCase(charOrNum)) // 数字     
			{
				val += String.valueOf(random.nextInt(10));
			}
		}

		return val;
	}

	/**
	 * <p>设置数据源</p>
	 * 
	 * @return
	 */
	public static void selectDataSource(String location) throws Exception
	{
		String dbType = getDbType(location);
		DBContextHolder.setDbType(dbType);
	}

	/**
	 * <p>获取数据源类型</p>
	 * 
	 * @return
	 */
	public static String getDbType(String location) throws Exception
	{
		String dbType = Constants.BLANK;

		if (StringUtils.isEmpty(location))
		{
			Exception e = new Exception("DataCenter is null.");
			log.error(CommonUtil.getFullStackError(e));
			throw e;
		}

		if (location.startsWith("msUrl") && location.length() >= 6)
		{
			dbType = location.substring(5);
		}

		return dbType;
	}

	@SuppressWarnings("rawtypes")
	public static boolean isEmpty(Collection o)
	{
		
		if (o.size() <= 0)
		{
			return true;
		}

		return false;
	}

	public static boolean verifyReqMap(Map<String, String> map)
	{

		for (String value : map.values())
		{
			if (StringUtils.isEmpty(value))
			{
				return false;
			}

		}
		return true;
	}
}
