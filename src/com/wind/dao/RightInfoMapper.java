package com.wind.dao;

import org.apache.ibatis.annotations.Param;

/**
 * @Description 权限详情数据访问层
 * @author 马彦涛
 * @Date 2018-9-6 
 */
public interface RightInfoMapper {
	/**
	 * 通过员工类型编号查询权限
	 * @param staffInfo
	 * @return 权限名称
	 */
	String getShiro(@Param("categoryId")int categoryId);
}
