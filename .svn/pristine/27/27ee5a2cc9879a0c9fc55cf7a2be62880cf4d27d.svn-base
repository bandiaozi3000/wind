package com.wind.service.impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.RightInfoMapper;
/**
 * @Description 权限详情实现类
 * @author 马彦涛
 * @Date 2018-9-6 
 */
import com.wind.service.RightInfoService;

@Service
public class RightInfoServiceImpl implements RightInfoService {

	@Resource
	private RightInfoMapper rightInfoMapper;
	@Override
	public String getShiro(int categoryId) {
		return rightInfoMapper.getShiro(categoryId);
	}

}