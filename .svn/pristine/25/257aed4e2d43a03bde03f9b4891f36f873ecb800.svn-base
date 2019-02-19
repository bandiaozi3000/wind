package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.AreaMapper;
import com.wind.entity.Area;
import com.wind.service.AreaService;
/**
 * 县区业务层实现类
 * @author 胡威
 * @date 2018年9月6日 下午3:53:53
 */
@Service
public class AreaServiceImpl implements AreaService {
	@Resource
	private AreaMapper areaMapper;
	@Override
	public List<Area> listAreaByParentId(int areaParentId) {
		return areaMapper.listAreaByParentId(areaParentId);
	}
	@Override
	public Area getArea(String areaName) {
		return areaMapper.getArea(areaName);
	}
	@Override
	public Area getAreaDetail(int areaId) {
		return areaMapper.getAreaDetail(areaId);
	}

}
