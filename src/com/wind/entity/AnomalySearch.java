package com.wind.entity;
/**
 * 查询异常件包装类
 * @author 胡威
 * @date 2018年9月14日 下午5:53:32
 */
public class AnomalySearch {
	private String orderNo;	//订单编号
	private String currentAgentNo;//当前网点编号
	private String agentInfo;//输入的网点名称或者网点编号
	private int handledCode;//是否处理 (1未处理，2处理)
	
	public String getCurrentAgentNo() {
		return currentAgentNo;
	}
	public void setCurrentAgentNo(String currentAgentNo) {
		this.currentAgentNo = currentAgentNo;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getAgentInfo() {
		return agentInfo;
	}
	public void setAgentInfo(String agentInfo) {
		this.agentInfo = agentInfo;
	}
	public int getHandledCode() {
		return handledCode;
	}
	public void setHandledCode(int handledCode) {
		this.handledCode = handledCode;
	}
	
}
