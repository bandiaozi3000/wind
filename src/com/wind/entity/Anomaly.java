package com.wind.entity;

import java.util.Date;

/**
 * 
 * @author 曹潇
 * @date 2018年9月10日上午10:10:16
 */
public class Anomaly {
	private int anomalyId;	//异常表id
	private String orderNo;	//订单编号
	private int statusCode;	//订单详情id
	private String issueInfo;//问题详情
	private int handledCode;//是否处理 (1未处理，2处理)
	private String handling;//处理详情
	private long agentNumber;//网点编号
	private Date creationDate;//处理时间
	private Date modifyDate;//修改时间 
	
	public int getAnomalyId() {
		return anomalyId;
	}
	public void setAnomalyId(int anomalyId) {
		this.anomalyId = anomalyId;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	public String getIssueInfo() {
		return issueInfo;
	}
	public void setIssueInfo(String issueInfo) {
		this.issueInfo = issueInfo;
	}
	public int getHandledCode() {
		return handledCode;
	}
	public void setHandledCode(int handledCode) {
		this.handledCode = handledCode;
	}
	public String getHandling() {
		return handling;
	}
	public void setHandling(String handling) {
		this.handling = handling;
	}
	public long getAgentNumber() {
		return agentNumber;
	}
	public void setAgentNumber(long agentNumber) {
		this.agentNumber = agentNumber;
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
	
}
