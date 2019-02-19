package com.wind.entity;

import java.util.Date;

/**
 * @Description 运输流程实体类
 * @author 马彦涛 杨婵
 * @Date 2018-9-7 
 */
public class TransInfo {
	private long transInfoId;//运输流程表id
	private String orderId;//订单号
	private long currentAgentId;//当前网点id
	private long nextAgentId;//下一站网点id
	private Date arrivalTime;//操作时间
	private int eventId;//事件id
	private String operatorId;//操作人工号
	private Date creationDate;//表创建时间
	private Date modifyDate;//表修改时间
	public long getTransInfoId() {
		return transInfoId;
	}
	public void setTransInfoId(long transInfoId) {
		this.transInfoId = transInfoId;
	}
	public long getCurrentAgentId() {
		return currentAgentId;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public void setCurrentAgentId(long currentAgentId) {
		this.currentAgentId = currentAgentId;
	}
	public long getNextAgentId() {
		return nextAgentId;
	}
	public void setNextAgentId(long nextAgentId) {
		this.nextAgentId = nextAgentId;
	}
	public Date getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(Date arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getOperatorId() {
		return operatorId;
	}
	public void setOperatorId(String operatorId) {
		this.operatorId = operatorId;
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
