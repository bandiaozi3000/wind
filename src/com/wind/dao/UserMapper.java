package com.wind.dao;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.User;

/**
 * 用户dao层
 * @author 曹潇
 * 2018.9.6 16:13
 */
public interface UserMapper {
	
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
	int findById(@Param("userPhone")String userPhone);
	/**
	 * 用户手机号查询用户信息
	 * @param userPhone
	 * @return
	 */
	User getUser(@Param("userPhone")String userPhone);
}
