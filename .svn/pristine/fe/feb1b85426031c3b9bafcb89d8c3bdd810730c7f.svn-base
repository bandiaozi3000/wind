package com.wind.dao;
/**
 * 县（区）数据访问接口
 * @author 胡威
 * @date 2018年9月6日 下午2:44:24
 */

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Area;

public interface AreaMapper {
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
	Area getArea(@Param("areaName")String areaName);
	/**
	 * 根据areaId查找该地区的详细地址
	 * @return
	 */
	Area getAreaDetail(@Param("areaId")int areaId);
}
