package com.wind.service;

import java.util.List;
import com.wind.entity.Area;

/**
 * 县区业务层 
 * @author 胡威
 * @date 2018年9月6日 下午3:50:58
 */
public interface AreaService {
	/**
	 * 根据归属城市查询县区
	 * @param areaParentId
	 * @return 归属某市的县区
	 */
	public List<Area> listAreaByParentId(int areaParentId);
	
	/**赵文超2018-9-12
	 * 指定查找获取区县名字
	 * @param areaName(参数)
	 * @return
	 */
	Area getArea(String areaName);
	/**
	 * 根据areaId查找该地区的详细地址
	 * @return
	 */
	Area getAreaDetail(int areaId);
}
