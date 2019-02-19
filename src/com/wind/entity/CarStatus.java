package com.wind.entity;
/**
 * 车辆状态表实体类
 *
 * @author 曹潇
 * @date 2018年9月10日上午10:27:10
 */
public class CarStatus {
	private int carStatusId;//车辆状态id
	private String statusName;//状态名称
	
	public int getCarStatusId() {
		return carStatusId;
	}
	public void setCarStatusId(int carStatusId) {
		this.carStatusId = carStatusId;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	
}
