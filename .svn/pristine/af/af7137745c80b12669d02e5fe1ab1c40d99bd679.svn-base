package com.wind.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestMapping;
import com.wind.entity.Customer;




@RequestMapping("customerService")
public interface CustomerService {
	/**
	 * 用户登录
	 *@Param
	 */
	Customer kefuLogin(String name ,String password);
	/**
	 * 修改客服在线状态为在线
	 *@Param
	 */
	int updateState( String account);//接线状态lines在线
	/**
	 * 修改客服在线状态为不在线在线
	 *@Param
	 */
	int updateNotState( String account);
	/**
	 * 修改客服接线状态为空闲线
	 *@Param
	 */
	int updateNotLines( String account);
	/**
	 * 修改客服接线状态为占线
	 *@Param
	 */
	int updateLines( String account);
	List<Customer> getCustomer();
	
}
