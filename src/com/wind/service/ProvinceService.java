package com.wind.service;

import java.util.List;

import com.wind.entity.Province;

/**
 * 省份业务层
 * @author 胡威
 * @date 2018年9月6日 下午3:49:40
 */
public interface ProvinceService {
	/**
	 * 查询所有省份
	 * @return 所有的省份
	 */
	public List<Province> listAllProvince();
	/**
	 * 通过Provinceid查询该城市 名称
	 * @return
	 */
	public Province findById(int provinceId);
}
