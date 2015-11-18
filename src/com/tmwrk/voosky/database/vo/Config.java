package com.tmwrk.voosky.database.vo;

/**
 * 自定义配置 实体类
 * @author wfluo 2015-11-17
 *
 */
public class Config {
	private int id ;
	private String name ;
	private String value ;
	private int vsort ;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public int getVsort() {
		return vsort;
	}
	public void setVsort(int vsort) {
		this.vsort = vsort;
	}
	
}
