package com.tmwrk.voosky.database.vo;
/**
 * 导航 实体类
 * @author wfluo 2015-11-17
 *
 */
public class Navigation {
	
	private int navId ;
	private String module ;
	private String navName ;
	private String guideAliases ;
	private String moduleUrl ;
	private String parentId ;
	private String vtype ;
	private int vsort ;
	
	
	public int getNavId() {
		return navId;
	}
	public void setNavId(int navId) {
		this.navId = navId;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getNavName() {
		return navName;
	}
	public void setNavName(String navName) {
		this.navName = navName;
	}
	public String getGuideAliases() {
		return guideAliases;
	}
	public void setGuideAliases(String guideAliases) {
		this.guideAliases = guideAliases;
	}
	public String getModuleUrl() {
		return moduleUrl;
	}
	public void setModuleUrl(String moduleUrl) {
		this.moduleUrl = moduleUrl;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getVtype() {
		return vtype;
	}
	public void setVtype(String vtype) {
		this.vtype = vtype;
	}
	public int getVsort() {
		return vsort;
	}
	public void setVsort(int vsort) {
		this.vsort = vsort;
	}
	
}
