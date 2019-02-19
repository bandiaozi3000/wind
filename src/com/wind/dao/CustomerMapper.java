package com.wind.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Customer;


/**
 * 客服数据访问层
 *@Description
 *@author 王永威
 *@Date2018年9月15日下午12:03:44
 */
public interface CustomerMapper {
	/**
	 * 用户登录
	 *@Param
	 */
	Customer kefuLogin(@Param("account")String name ,@Param("customerPass")String password);
	/**
	 * 修改客服在线状态为在线
	 *@Param
	 */
	int updateState(@Param("account") String account);//接线状态lines在线
	/**
	 * 修改客服在线状态为不在线
	 *@Param
	 */
	int updateNotState(@Param("account") String account);//接线状态lines不在线
	/**
	 * 修改客服接线状态为空闲线
	 *@Param
	 */
	int updateNotLines(@Param("account") String account);//接线状态接线中
	/**
	 * 修改客服接线状态为占线
	 *@Param
	 */
	int updateLines(@Param("account") String account);//接线状态空闲
	/**
	 * 获取全部在线,不在接线状态的信息
	 *@Param
	 */
	List<Customer> getCustomer();//获取全部在线,不在接线状态的信息

	
}
