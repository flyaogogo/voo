package com.tmwrk.voosky.module.util;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import com.tmwrk.voosky.module.log.LogWriter;

/**
 * 日期转换
 * @author wfluo
 * @version 2014.04.16
 *
 */
public class DateUtil {
	
	public static SimpleDateFormat getSimpleDateFormat(String pattern) {
		if(pattern==null)
			pattern = "yyyy-MM-dd HH:mm:ss";
		return new SimpleDateFormat(pattern);
	}
	//获得SimpleDateFormat 
	public static SimpleDateFormat getSimpleDateFormat() {
		String	pattern = "yyyy-MM-dd HH:mm:ss";
		return new SimpleDateFormat(pattern);
	}
	
	//将时间字符类型的转成字符日期格式化  ,不同编码类型转换，如  MM/dd/yyyy HH:mm:ss   ---->   yyyy-MM-dd HH:mm:ss
	public static String convertStringDateFormat(String time,String pattern) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern) ;
		Date date = sdf.parse(time) ;
		return convertDateFormat(date) ;
	}
	/**
	 * 把当前时间转换成默认格式字符
	 * 默认日期格式：yyyy-MM-dd HH:mm:ss
	 * @param pattern
	 * @return
	 */
	public static String converNowDate(){
		Date date = new Date();
		DateFormat df = getSimpleDateFormat();//设置显示格式
		String nowTime = df.format(date);
		return nowTime ;
	}
	/**
	 * 把当前时间转换成显示格式字符
	 * @param pattern
	 * @return
	 */
	public static String converNowDate(String pattern){
		Date date = new Date();
		DateFormat df = new SimpleDateFormat(pattern);//设置显示格式
		String nowTime = df.format(date);
		return nowTime ;
	}
	//将字符串转换成date  
	public static Date convertDate(String time) throws Exception {
		return getSimpleDateFormat().parse(time);
	}

	//将long 转换成 date  
	public static Date convertDate(long time) throws Exception {
		return getSimpleDateFormat().parse(
				getSimpleDateFormat().format(new Date(time)));
	}

	//将date类型的日期格式化  
	public static String convertDateFormat(Date time) {
		return getSimpleDateFormat().format(time);
	}

	//将date类型转换成Timestamp -- 接收一个Date类型的日期  
	public static Timestamp convertTimestamp(Date time) throws Exception {
		//传了一个String字符串日期   
		return convertTimestamp(getSimpleDateFormat().format(time));
	}

	//将String类型转换成Timestamp -- 接收一个字符串日期  
	public static Timestamp convertTimestamp(String time) throws Exception {
		//传了一个long类型的日期  
		return new Timestamp(getSimpleDateFormat().parse(time).getTime());
	}

	//将long类型转换成Timestamp -- 接收一个long日期  
	public static Timestamp convertTimestamp(long time) throws Exception {
		//传了一个Date类型的日期  
		return convertTimestamp(new Date(time));
	}
	/**
	 * 特殊：把字符时间转成日期型
	 * @param pattern 时间格式
	 * @param timeStr 字符时间
	 * @return
	 * @throws Exception
	 */
	public static Date convertCSTDate(String pattern,String timeStr) throws Exception {
		if(pattern==null ){
			pattern = "EEE MMM dd yyyy HH:mm:ss" ;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(pattern, Locale.US);
		Date date = (Date) sdf.parse(timeStr);
		return date ;
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
}
