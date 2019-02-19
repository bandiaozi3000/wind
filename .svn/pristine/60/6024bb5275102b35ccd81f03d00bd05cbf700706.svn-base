package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.GoodsCategoryMapper;
import com.wind.entity.GoodsCategory;
import com.wind.service.GoodsCategoryService;
/**
 * 网点信息业务逻辑层serviceImpl
 * @author 吕擎擎
 * @date 2018年9月6日下午3:00:14
 */
@Service
public class GoodsCategoryserviceImpl implements GoodsCategoryService {

	@Resource
	private GoodsCategoryMapper  goodsCategoryMapper;

	/* (non-Javadoc)
	 * @see com.wind.service.GoodsCategoryService#getGoodsCategoryList()
	 */
	@Override
	public List<GoodsCategory> getGoodsCategoryList() {
		// TODO Auto-generated method stub
		return goodsCategoryMapper.getGoodsCategoryList();
	}
}
