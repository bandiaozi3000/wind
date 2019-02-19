package com.wind.entity;

import java.util.Date;

/**
 * 车辆表实体类
 * @author 曹潇
 * @date 2018年9月10日上午10:17:42
 */
public class Car {
	private int carId;		//车辆id
	private String carNum;	//车牌号
	private String driverName;//司机姓名
	private String driverPhone;//司机电话
	private String copilotName;//副驾姓名
	private String copilotPhone;//副驾电话
	private int carState;	//车辆状态
	private int carType;	//车辆类型
	private long carNowAgent;//车辆现在所在网点编号
	private long carArriveAgent;//车辆所要到达的网点编号
	private int carBelongId;//车辆所归属网点
	private Date creationDate;//表创建时间
	private Date modifyDate;//表修改时间
	
	
	public int getCarBelongId() {
		return carBelongId;
	}
	public void setCarBelongId(int carBelongId) {
		this.carBelongId = carBelongId;
	}
	public long getCarNowAgent() {
		return carNowAgent;
	}
	public void setCarNowAgent(long carNowAgent) {
		this.carNowAgent = carNowAgent;
	}
	public long getCarArriveAgent() {
		return carArriveAgent;
	}
	public void setCarArriveAgent(long carArriveAgent) {
		this.carArriveAgent = carArriveAgent;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getDriverName() {
		return driverName;
	}
	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}
	public String getDriverPhone() {
		return driverPhone;
	}
	public void setDriverPhone(String driverPhone) {
		this.driverPhone = driverPhone;
	}
	public String getCopilotName() {
		return copilotName;
	}
	public void setCopilotName(String copilotName) {
		this.copilotName = copilotName;
	}
	public String getCopilotPhone() {
		return copilotPhone;
	}
	public void setCopilotPhone(String copilotPhone) {
		this.copilotPhone = copilotPhone;
	}
	public int getCarState() {
		return carState;
	}
	public void setCarState(int carState) {
		this.carState = carState;
	}
	public int getCarType() {
		return carType;
	}
	public void setCarType(int carType) {
		this.carType = carType;
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
