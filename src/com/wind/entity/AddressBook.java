package com.wind.entity;
/**
 * 地址薄实体类
 *
 * @author 曹潇
 * @date 2018年9月11日下午4:36:03
 */
public class AddressBook {
	private long addressBookId;//地址薄id
	private String userPhone;//用户电话
	private String userAddressBook;//用户地址薄
	private String userAddressInfo;//详细地址信息
	private String userAddressName;//地址簿填写寄件人/收件人地址
	private long userId;//用于识别的用户id
	
	public long getAddressBookId() {
		return addressBookId;
	}
	public void setAddressBookId(long addressBookId) {
		this.addressBookId = addressBookId;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddressBook() {
		return userAddressBook;
	}
	public void setUserAddressBook(String userAddressBook) {
		this.userAddressBook = userAddressBook;
	}
	public String getUserAddressInfo() {
		return userAddressInfo;
	}
	public void setUserAddressInfo(String userAddressInfo) {
		this.userAddressInfo = userAddressInfo;
	}
	public String getUserAddressName() {
		return userAddressName;
	}
	public void setUserAddressName(String userAddressName) {
		this.userAddressName = userAddressName;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	
	
}
