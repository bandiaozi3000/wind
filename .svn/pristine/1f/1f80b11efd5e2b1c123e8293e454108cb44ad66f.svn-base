package com.wind.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Province;

/**
 * 省份数据访问接口
 * @author 胡威
 * @date 2018年9月6日 下午2:35:19
 */
public interface ProvinceMapper {
	/**
	 * 查询所有省份有
	 * @return 所有的省份
	 */
	public List<Province> listAllProvince();
	/**
	 * 通过Provinceid查询该城市 名称
	 * @return
	 */
	public Province findById(@Param("provinceId")int provinceId);
}
