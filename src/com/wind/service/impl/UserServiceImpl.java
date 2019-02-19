package com.wind.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.UserMapper;
import com.wind.entity.User;
import com.wind.service.UserService;
/**
 * 用户实现层
 * @author 曹潇
 * @date 2018年9月6日下午4:22:34
 */
@Service
public class UserServiceImpl implements UserService{
	@Resource
	private UserMapper userMapper;

	@Override
	public int register(User user) {
		return userMapper.register(user);
	}

	@Override
	public User login(User user) {
		User users = userMapper.login(user);
		return userMapper.login(user);
	}

	@Override
	public int updateUserInfo(User user) {
		return userMapper.updateUserInfo(user);
	}

	@Override
	public int updateUserPassword(User user) {
		return userMapper.updateUserPassword(user);
	}

	@Override
	public int findById(String userPhone) {
		return userMapper.findById(userPhone);
	}

	@Override
	public User getUser(String userPhone) {
		return userMapper.getUser(userPhone);
	}
}
