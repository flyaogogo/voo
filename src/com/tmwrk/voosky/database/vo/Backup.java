package com.tmwrk.voosky.database.vo;
/**
 * 数据库备份实体类
 * @author wfluo 2015-11-17
 *
 */
public class Backup {

	private int id ;
	private String fileName ;
	private long fileSize ;
	private String slaveTime ;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getSlaveTime() {
		return slaveTime;
	}
	public void setSlaveTime(String slaveTime) {
		this.slaveTime = slaveTime;
	}
	
}
