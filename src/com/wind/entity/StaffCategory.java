package com.wind.entity;
/**
 * 员工类型实体类
 * @author 柴敏华
 * @date 2018年9月6日
 */
public class StaffCategory {
	private int categoryId;//员工类型编号id
	private String categoryName;//员工类型名称
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
}
