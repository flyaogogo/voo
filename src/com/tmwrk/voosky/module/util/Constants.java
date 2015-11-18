package com.tmwrk.voosky.module.util;

/**
 * <p>String常量</p>
 * 
 * @author wfluo
 * @version 2014.08.01
 *
 */
public class Constants
{
	public static final String AMPERSAND = "&";

	public static final String AMPERSAND_ENCODED = "&amp;";

	public static final String APOSTROPHE = "'";

	public static final String AT = "@";

	public static final String BACK_SLASH = "\\";

	public static final String BETWEEN = "BETWEEN";

	public static final String BLANK = "";

	public static final String CARET = "^";

	public static final String CDATA_CLOSE = "]]>";

	public static final String CDATA_OPEN = "<![CDATA[";

	public static final String CLOSE_BRACKET = "]";

	public static final String CLOSE_CURLY_BRACE = "}";

	public static final String CLOSE_PARENTHESIS = ")";

	public static final String COLON = ":";

	public static final String COMMA = ",";

	public static final String COMMA_AND_SPACE = ", ";

	public static final String DASH = "-";

	public static final String DOLLAR = "$";

	public static final String DOLLAR_AND_OPEN_CURLY_BRACE = "${";

	public static final String DOUBLE_APOSTROPHE = "''";

	public static final String DOUBLE_CLOSE_BRACKET = "]]";

	public static final String DOUBLE_CLOSE_CURLY_BRACE = "}}";

	public static final String DOUBLE_OPEN_BRACKET = "[[";

	public static final String DOUBLE_OPEN_CURLY_BRACE = "{{";

	public static final String DOUBLE_PERIOD = "..";

	public static final String DOUBLE_QUOTE = "\"\"";

	public static final String DOUBLE_SLASH = "//";

	public static final String DOUBLE_SPACE = "  ";

	public static final String EXCLAMATION = "!";

	public static final String EQUAL = "=";

	public static final String FALSE = "false";

	public static final String FORWARD_SLASH = "/";

	public static final String FOUR_SPACES = "    ";

	public static final String GRAVE_ACCENT = "`";

	public static final String GREATER_THAN = ">";

	public static final String GREATER_THAN_OR_EQUAL = ">=";

	public static final String INVERTED_EXCLAMATION = "\u00A1";

	public static final String INVERTED_QUESTION = "\u00BF";

	public static final String IS_NOT_NULL = "IS NOT NULL";

	public static final String IS_NULL = "IS NULL";

	public static final String ISO_8859_1 = "ISO-8859-1";

	public static final String LESS_THAN = "<";

	public static final String LESS_THAN_OR_EQUAL = "<=";

	public static final String LIKE = "LIKE";

	public static final String MINUS = "-";

	public static final String NBSP = "&nbsp;";

	public static final String NEW_LINE = "\n";

	public static final String NOT_EQUAL = "!=";

	public static final String NOT_LIKE = "NOT LIKE";

	public static final String NULL = "null";

	public static final String OPEN_BRACKET = "[";

	public static final String OPEN_CURLY_BRACE = "{";

	public static final String OPEN_PARENTHESIS = "(";

	public static final String PERCENT = "%";

	public static final String PERIOD = ".";

	public static final String PIPE = "|";

	public static final String PLUS = "+";

	public static final String POUND = "#";

	public static final String QUESTION = "?";

	public static final String QUOTE = "\"";

	public static final String RETURN = "\r";

	public static final String RETURN_NEW_LINE = "\r\n";

	public static final String SEMICOLON = ";";

	public static final String SLASH = FORWARD_SLASH;

	public static final String SPACE = " ";

	public static final String STAR = "*";

	public static final String TAB = "\t";

	public static final String TILDE = "~";

	public static final String TRUE = "true";

	public static final String UNDERLINE = "_";

	public static final String UTC = "UTC";

	public static final String UTF8 = "UTF-8";

	public static final int DEFAULT_PAGE_SIZE = 10;

	public static final String ASYNC_JOB_NOT_EXIST = "-1";

	// 异步任务成功状态
	public static final String ASYNC_JOB_SUCCESS = "0";

	// 异步任务失败状态
	public static final String ASYNC_JOB_FAIL = "-1";

	// 高速盘标签
	public static final String DISK_TYPE_TAG_HIGH_SPEED = "tag.high.speed.storage";

	// 低速盘标签
	public static final String DISK_TYPE_TAG_LOW_SPEED = "tag.low.speed.storage";

	//账户类型
	public static final int ADMIN = 1;

	public static final int USER = 0;

	//account管理员
	public static final int ACCOUNT_TYPE_ADMIN=0;

	//account普通用户
	public static final int ACCOUNT_TYPE_COMMON=1;
	
	//user管理员
	public static final int USER_TYPE_ADMIN=0;
	
	//user普通用户
	public static final int USER_TYPE_COMMON=1;
	
	//account 状态 正常
	public static final int ACCOUNT_STATUS_NORMAL=0;
	
	//account 状态 锁定
	public static final int ACCOUNT_STATUS_LOCK=1;
	
	//account 状态 删除
	public static final int ACCOUNT_STATUS_DELETE=2;
	
	//user 状态 正常
	public static final int USER_STATUS_NORMAL=0;
	
	//user 状态 锁定
	public static final int USER_STATUS_LOCK=1;
	
	////user 状态 删除
	public static final int USER_STATUS_DELETE=2;
	
	public static final int USER_INCORRECT_ATTEMPTS_LIMIT=3;
	
	//资源配额类型
	public static final String cpu_limit = "CPU";
	public static final String memory_limit = "MEM";
	public static final String primary_storage_limit = "PRI_STO";
	public static final String public_ip_limit = "PUB_IP";
	public static final String secondary_storage_limit = "SEC_STO";
	public static final String template_limit = "TMP";
	public static final String snapshot_limit = "SNPST";
	public static final String mysql_instance_limit = "MSQL";
	public static final String oracle_limit = "ORACLE";
	
	//资源类型
	public static final String vm_resource_type = "VM";
	public static final String volume_resource_type = "VOLUME";
	public static final String template_resource_type = "TMP";
	public static final String snapshot_resource_type = "SNPST";
	public static final String public_ip_resource_type = "PUB_IP";
	
	
}
