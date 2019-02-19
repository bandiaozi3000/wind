package com.wind.entity;

public class Customer {
	private int customerId;//客服Id
	private String  account;//客服账号
	private String customerName;//客服姓名
	private	String customerNickname;//客服昵称
	private String customerPass;//客服密码
	private int sex;//性别0
	private String phone;//客户手机号
	private int state;//接线状态
	private int liness;//在线状态
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerNickname() {
		return customerNickname;
	}
	public void setCustomerNickname(String customerNickname) {
		this.customerNickname = customerNickname;
	}
	public String getCustomerPass() {
		return customerPass;
	}
	public void setCustomerPass(String customerPass) {
		this.customerPass = customerPass;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getLiness() {
		return liness;
	}
	public void setLiness(int liness) {
		this.liness = liness;
	}
	
}
