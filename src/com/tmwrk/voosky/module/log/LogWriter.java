package com.tmwrk.voosky.module.log;


import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;


/**
 * <p>记录日志类
 *
 *
 * @author wfluo
 * @version 1.0
 */
public class LogWriter {
	//日志记录实例
	private static Logger logger = Logger.getLogger(LogWriter.class);
	public final static String LOG4JXML="com/tmwrk/sysoa/module/log/log4jManager.xml";
	
	/**
     * 对DailyRollingFileAppender类型的appender进行文件名称的定制
     */
	static {
		java.net.URL url = LogWriter.class.getClassLoader().getResource(LOG4JXML);
//		java.net.URL url = Utils.getUrl(LogWriter.class, LOG4JXML) ;
//		System.out.println("log xml url=" + url);
		DOMConfigurator.configure(url);
	}
	
	/**
     * 动态修改日志记录级别
     * @param level：日志记录级别
     */
	public static void setLevel(Level level){
		logger.setLevel(level);
	}

	/**
     * 动态修改日志记录级别
     * 返回当前日志级别
     */
	public static String getLevel(){
		return  logger.getLevel().toString();
	}
	/**
     * info日志调用接口
     * @param content：日志内容
     * @param className：类名
     */
	public static void info(String content,String className){
		logger.info((className!=null?className+" ":"")+content);
	}
	
	/**
     * debug日志调用接口
     * @param content：日志内容
     * @param className：类名
     */
	public static void debug(String content,String className){
		logger.debug((className!=null?className+" ":"")+content);
	}
	
	
	/**
     * trace日志调用接口
     * @param content：日志内容
     * @param className：类名
     */
	public static void trace(String content,String className){
		logger.warn((className!=null?className+" ":"")+content);
	}
	
	/**
     * error日志调用接口
     * @param content：日志内容
     * @param evtID：错误事件ID
     * @param className：类名
     */
	public static void error(String content,String className){
		logger.error((className!=null?className+" ":"")+content);
	}
	/**
	 * error日志调用接口
	 * @param content：日志内容
	 * @param evtID：错误事件ID
	 * @param className：类名
	 */
	public static void error(String content,String evtID,String className){
		logger.error((evtID!=null?evtID+" ":"")+(className!=null?className+" ":"")+content);
	}
	
	/**
	 * <p>
	 * @param ex, Throwable<br>
	 * @param className, String, Class Name.<br>
	 * */
	public static void error(Throwable ex,String className){
		if(className == null)
			className = "";
		logger.error(className);
		logger.error(ex.getMessage());
		if(ex.getCause() != null){
			logger.error(ex.getCause().getMessage());
		}
		
		StackTraceElement[] strackEles = ex.getStackTrace();
		for(StackTraceElement ele : strackEles){
			logger.error(ele);
		}
	}
	
	/**
     * error日志调用接口
     * @param content：日志内容
     * @param evtID：错误事件ID
     * @param className：类名
     * @param t：异常信息
     */
	public static void error(String content,String evtID,String className,Throwable t){
		logger.error((evtID!=null?evtID+" ":"")+(className!=null?className+" ":"")+content,t);
	}
	
}
