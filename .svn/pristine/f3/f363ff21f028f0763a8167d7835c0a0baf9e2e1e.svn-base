package com.wind.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.City;


/**
 * 城市数据访问接口口
 * @author 胡威
 * @date 2018年9月6日 下午2:43:46
 */
public interface CityMapper {
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
	public City findById(@Param("cityName") String cityName);
	/**
	 * 通过cityid查询该城市 名称
	 * @return
	 */
	public City findByCityId(@Param("cityId")int cityId);
}
