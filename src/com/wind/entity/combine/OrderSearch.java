package com.wind.entity.combine;
/**
 * 查询订单表的时候传参数的类
 * @author 柴敏华
 * @date 2018年9月17日 下午5:09:53
 */
public class OrderSearch {
	private String orderNo;//订单编号
	private Integer payType;//支付方式
	private Integer statusId;//状态编码id
	private String orderName;//寄件人或者收件人姓名
	private String orderTel;//寄件人或者收件人手机号
	private String startAddress;//寄件地址
	private String endAddress;//收件地址
	private String startTime;//查询时间开始
	private String endTime;//查询时间结束
	
	
	public Integer getPayType() {
		return payType;
	}
	public void setPayType(Integer payType) {
		this.payType = payType;
	}
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderTel() {
		return orderTel;
	}
	public void setOrderTel(String orderTel) {
		this.orderTel = orderTel;
	}
	public String getStartAddress() {
		return startAddress;
	}
	public void setStartAddress(String startAddress) {
		this.startAddress = startAddress;
	}
	public String getEndAddress() {
		return endAddress;
	}
	public void setEndAddress(String endAddress) {
		this.endAddress = endAddress;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
}
