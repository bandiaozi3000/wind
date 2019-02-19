package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.CityMapper;
import com.wind.entity.City;
import com.wind.service.CityService;
/**
 * 城市业务层实现类 
 * @author 胡威
 * @date 2018年9月6日 下午3:52:42
 */
@Service
public class CityServiceImpl implements CityService {
	@Resource
	private CityMapper cityMapper;
	@Override
	public List<City> listCityByParentId(int cityParentId) {
		return cityMapper.listCityByParentId(cityParentId);
	}
	@Override
	public City findById(String catyName) {
		return cityMapper.findById(catyName);
	}
	@Override
	public City findByCityId(int cityId) {
		return cityMapper.findByCityId(cityId);
	}
}
