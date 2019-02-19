package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.ProvinceMapper;
import com.wind.entity.Province;
import com.wind.service.ProvinceService;
/**
 * 省份业务层实现类 
 * @author 胡威
 * @date 2018年9月6日 下午3:52:06
 */
@Service
public class ProvinceServiceImpl implements ProvinceService {
	@Resource
	private ProvinceMapper provinceMapper;
	@Override
	public List<Province> listAllProvince() {
		return provinceMapper.listAllProvince();
	}
	@Override
	public Province findById(int provinceId) {
		return provinceMapper.findById(provinceId);
	}

}
