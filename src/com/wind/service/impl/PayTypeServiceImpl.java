package com.wind.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.PayTypeMapper;

import com.wind.service.PayTypeService;
/**
 * 付款方式业务逻辑层
 * @author 吕擎擎
 * @date 2018年9月6日下午3:16:02
 */
@Service
public class PayTypeServiceImpl implements PayTypeService {
	
	@Resource
	private PayTypeMapper payTypeMapper;

}
