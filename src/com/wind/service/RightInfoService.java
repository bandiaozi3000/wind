package com.wind.service;
/**
 * @Description 权限详情业务逻辑层
 * @author 马彦涛
 * @Date 2018-9-6 
 */
public interface RightInfoService {
	/**
	 * 通过员工类型编号查询权限
	 * @param staffInfo
	 * @return 权限名称
	 */
	String getShiro(int categoryId);
}
