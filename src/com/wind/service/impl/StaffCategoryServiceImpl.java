package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.StaffCategoryMapper;
import com.wind.entity.StaffCategory;
import com.wind.service.StaffCategoryService;
/**
 * 员工类型service实现类
 * @author 柴敏华
 * @date 2018年9月6日 下午2:41:51
 */
@Service
public class StaffCategoryServiceImpl implements StaffCategoryService{
	
	@Resource
	private StaffCategoryMapper StaffCategoryMapper;

	@Override
	public List<StaffCategory> getCateGory() {
		// TODO Auto-generated method stub
		return StaffCategoryMapper.getCateGory();
	}

}
