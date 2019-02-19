package com.wind.entity;
/**
 * @Description 订单类
 * @author 孙黎明
 * @Date 2018年9月6日 
 */

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Order {
	private long orderId;  //订单id
	private String orderNo; //订单编号
	private long belongId;  //所归属网点编号
	private String senderName; //寄件人姓名
	private String senderTel; //寄件人电话
	private int senderAddressId; //寄件人地址id(县/区  id)
	private String senderDetail; //寄件人纤细地址
	private String signName; //收件人姓名
	private String signTel; //收件人电话
	private int signAddressId; //收件人地址id(县/区  id)
	private String signDetail; //收件人详细地址
	private String collectorId; //揽件员工工号
	private String delivererId; //派送员工号
	private int goodsId; //货物分类(易碎品等)
	private double price; //订单价格
	private int payType; //付款方式(到付/寄付)
	private double insuredPrice; //保价金额(默认为0)
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createTime; //订单创建日期
	private Date signTime; //签收日期
	private int status; //状态(1正常/2异常)
	private int statusCode; //状态码
	private String remark; //备注 
	private Date creationDate; //表创建时间
	private Date modifyDate; //表修改时间
	
	
	public long getOrderId() {
		return orderId;
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
	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public long getBelongId() {
		return belongId;
	}
	public void setBelongId(long belongId) {
		this.belongId = belongId;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getSenderTel() {
		return senderTel;
	}
	public void setSenderTel(String senderTel) {
		this.senderTel = senderTel;
	}
	public int getSenderAddressId() {
		return senderAddressId;
	}
	public void setSenderAddressId(int senderAddressId) {
		this.senderAddressId = senderAddressId;
	}
	public String getSenderDetail() {
		return senderDetail;
	}
	public void setSenderDetail(String senderDetail) {
		this.senderDetail = senderDetail;
	}
	public String getSignName() {
		return signName;
	}
	public void setSignName(String signName) {
		this.signName = signName;
	}
	public String getSignTel() {
		return signTel;
	}
	public void setSignTel(String signTel) {
		this.signTel = signTel;
	}
	public int getSignAddressId() {
		return signAddressId;
	}
	public void setSignAddressId(int signAddressId) {
		this.signAddressId = signAddressId;
	}
	public String getSignDetail() {
		return signDetail;
	}
	public void setSignDetail(String signDetail) {
		this.signDetail = signDetail;
	}
	public String getCollectorId() {
		return collectorId;
	}
	public void setCollectorId(String collectorId) {
		this.collectorId = collectorId;
	}
	public String getDelivererId() {
		return delivererId;
	}
	public void setDelivererId(String delivererId) {
		this.delivererId = delivererId;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPayType() {
		return payType;
	}
	public void setPayType(int payType) {
		this.payType = payType;
	}
	public double getInsuredPrice() {
		return insuredPrice;
	}
	public void setInsuredPrice(double insuredPrice) {
		this.insuredPrice = insuredPrice;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getSignTime() {
		return signTime;
	}
	public void setSignTime(Date signTime) {
		this.signTime = signTime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

}
