package com.wind.service;

import com.wind.entity.User;

/**
 * 用户逻辑层
 * @author 曹潇
 * @date 2018年9月6日下午4:21:23
 */
public interface UserService {

	/**
	 * 注册
	 * @param user
	 * @return
	 */
	int register(User user);
	
	/**
	 * 登陆
	 * @param user
	 * @return
	 */
	User login(User user);
	
	/**
	 * 修改用户信息
	 * @param user
	 * @return
	 */
	int updateUserInfo(User user);
	
	/**
	 * 修改用户密码
	 * @param user
	 * @return
	 */
	int updateUserPassword(User user);
	
	/**
	 * 用户手机号查询用户信息--用于判断注册时是否已经存在用户
	 * @param userPhone
	 * @return
	 */
	int findById(String userPhone);
	/**
	 * 用户手机号查询用户信息
	 * @param userPhone
	 * @return
	 */
	User getUser(String userPhone);

}
