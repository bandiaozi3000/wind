package com.wind.service;

import java.util.List;

import com.wind.entity.City;

/**
 * 城市业务层
 * @author 胡威
 * @date 2018年9月6日 下午3:50:09
 */
public interface CityService {
	/**
	 * 根据所属省份id查询城市
	 * @param cityParentId
	 * @return 归属某省份的城市
	 */
	public List<City> listCityByParentId(int cityParentId);
	/**
	 * 根据市区名称查询该市区
	 * @param catiName
	 * @return 获得城市的详细信息
	 */
	public City findById(String catyName);
	/**
	 * 通过cityid查询该城市 名称
	 * @return
	 */
	public City findByCityId(int cityId);
}
