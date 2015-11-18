package com.tmwrk.voosky.database.vo;
/**
 * 单页面 实体类
 * @author wfluo 2015-11-17
 *
 */
public class SinglePage {
	private int pageId ;
	private String uniqueName ;
	private String pageName ;
	private String keywords ;
	private String desc ;
	private int navId ;
	
	
	public int getPageId() {
		return pageId;
	}
	public void setPageId(int pageId) {
		this.pageId = pageId;
	}
	public String getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(String uniqueName) {
		this.uniqueName = uniqueName;
	}
	public String getPageName() {
		return pageName;
	}
	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public int getNavId() {
		return navId;
	}
	public void setNavId(int navId) {
		this.navId = navId;
	}
	
}
