package com.tmwrk.voosky.database.vo;

/**
 * 网站 管理员  日志审计
 * @author wfluo 2015-11-17
 *
 */
public class Audit {

	private int logId ;
	private String operModel ;
	private String operUser ;
	private String operNote ;
	private String operTime ;
	private String ip ;
	
	
	public int getLogId() {
		return logId;
	}
	public void setLogId(int logId) {
		this.logId = logId;
	}
	public String getOperModel() {
		return operModel;
	}
	public void setOperModel(String operModel) {
		this.operModel = operModel;
	}
	public String getOperUser() {
		return operUser;
	}
	public void setOperUser(String operUser) {
		this.operUser = operUser;
	}
	public String getOperNote() {
		return operNote;
	}
	public void setOperNote(String operNote) {
		this.operNote = operNote;
	}
	public String getOperTime() {
		return operTime;
	}
	public void setOperTime(String operTime) {
		this.operTime = operTime;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
}
