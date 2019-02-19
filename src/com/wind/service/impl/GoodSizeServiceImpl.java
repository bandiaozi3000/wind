package com.wind.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.GoodSizeMapper;
import com.wind.entity.GoodSize;
import com.wind.service.GoodSizeService;

/**
 * @Description 货物信息业务逻辑实现层
 * @author 孙黎明
 * @Date 2018年9月8日
 */
@Service
public class GoodSizeServiceImpl implements GoodSizeService {
    
	@Resource
	private GoodSizeMapper goodSizeMapper;
	@Override
	public int addGoodInfo(GoodSize goodSize) {
		return goodSizeMapper.addGoodInfo(goodSize);
	}
	@Override
	public int modifyGoodInfo(GoodSize goodSize) {
		return goodSizeMapper.modifyGoodInfo(goodSize);
	}

}
