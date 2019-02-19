package com.wind.entity;

import java.util.Date;
/**
 * Agent网点信息实体类
 * @author赵文超
 *
 * 2018年9月6日下午4:08:03
 */
public class Agent {
	public class addressBook {
		
	}
	private int solrId;//网点id
	private long agentNumber;//网点编号
	private	String agentName;//网点名
	private String agentAddress;//网店地址
	private long agentCityId;//城市编号
	private int agentLevel;//网点级别
	private String agentHotline;//网点业务电话(座机)
	private int agentCode;//网点邮政编号
	private String agentTel;//网点手机号
	private String agentManager;//网点负责人(工号)
	private String agentFax;//传真
	private String agentRange;//业务范围
	private String agentTime;//营业时间
	private String agentRemarks;//备注
	private Date creationDate;//创建时间
	private Date modifyDate;//修改时间
	private long belongId;//所归属网点编号
	private int rightId;//权限id
	private String staffName;//网点负责人的姓名
	private int areaId;//区/县编号
	private int staffGender;//性别
	private int cityId;//市
	
	
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public int getStaffGender() {
		return staffGender;
	}
	public void setStaffGender(int staffGender) {
		this.staffGender = staffGender;
	}
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public long getAgentCityId() {
		return agentCityId;
	}
	public void setAgentCityId(long agentCityId) {
		this.agentCityId = agentCityId;
	}
	public int getSolrId() {
		return solrId;
	}
	public void setSolrId(int solrId) {
		this.solrId = solrId;
	}
	public long getAgentNumber() {
		return agentNumber;
	}
	public void setAgentNumber(long agentNumber) {
		this.agentNumber = agentNumber;
	}
	public String getAgentName() {
		return agentName;
	}
	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}
	public String getAgentAddress() {
		return agentAddress;
	}
	public void setAgentAddress(String agentAddress) {
		this.agentAddress = agentAddress;
	}
	public int getAgentLevel() {
		return agentLevel;
	}
	public void setAgentLevel(int agentLevel) {
		this.agentLevel = agentLevel;
	}
	public String getAgentHotline() {
		return agentHotline;
	}
	public void setAgentHotline(String agentHotline) {
		this.agentHotline = agentHotline;
	}
	public int getAgentCode() {
		return agentCode;
	}
	public void setAgentCode(int agentCode) {
		this.agentCode = agentCode;
	}
	public String getAgentTel() {
		return agentTel;
	}
	public void setAgentTel(String agentTel) {
		this.agentTel = agentTel;
	}
	public String getAgentManager() {
		return agentManager;
	}
	public void setAgentManager(String agentManager) {
		this.agentManager = agentManager;
	}
	public String getAgentFax() {
		return agentFax;
	}
	public void setAgentFax(String agentFax) {
		this.agentFax = agentFax;
	}
	public String getAgentRange() {
		return agentRange;
	}
	public void setAgentRange(String agentRange) {
		this.agentRange = agentRange;
	}
	public String getAgentTime() {
		return agentTime;
	}
	public void setAgentTime(String agentTime) {
		this.agentTime = agentTime;
	}
	public String getAgentRemarks() {
		return agentRemarks;
	}
	public void setAgentRemarks(String agentRemarks) {
		this.agentRemarks = agentRemarks;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public long getBelongId() {
		return belongId;
	}
	public void setBelongId(long belongId) {
		this.belongId = belongId;
	}
	public int getRightId() {
		return rightId;
	}
	public void setRightId(int rightId) {
		this.rightId = rightId;
	}

	
	
	
	
	
	
}
