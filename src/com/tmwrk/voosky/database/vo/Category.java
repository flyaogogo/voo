package com.tmwrk.voosky.database.vo;

/**
 * 文章及商品分类  实体类
 * @author wfluo 2015-11-17
 *
 */
public class Category {

	
	private String cateId ;
	private String uniqueName ;
	private String keywords ;
	private String desc ;
	private String cateStatus ;
	private int navId ;
	public String getCateId() {
		return cateId;
	}
	public void setCateId(String cateId) {
		this.cateId = cateId;
	}
	public String getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(String uniqueName) {
		this.uniqueName = uniqueName;
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
	public String getCateStatus() {
		return cateStatus;
	}
	public void setCateStatus(String cateStatus) {
		this.cateStatus = cateStatus;
	}
	public int getNavId() {
		return navId;
	}
	public void setNavId(int navId) {
		this.navId = navId;
	}
	
}
