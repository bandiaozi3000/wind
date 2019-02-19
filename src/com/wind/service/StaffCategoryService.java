package com.wind.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wind.entity.StaffCategory;

/**
 * 员工类型Service
 * @author 柴敏华
 * @date 2018年9月6日 下午2:39:28
 */
public interface StaffCategoryService {
	/**
	 * 返回所有的权限角色信息的集合
	 * @return
	 */
	List<StaffCategory> getCateGory();
}
