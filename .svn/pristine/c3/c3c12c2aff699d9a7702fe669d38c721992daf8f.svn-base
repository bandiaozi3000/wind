package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.StaffInfoMapper;
import com.wind.entity.StaffInfo;
import com.wind.service.StaffInfoService;

/**
 * @Description 员工信息Service层接口实现类
 *
 * @Author 唐耀家
 *
 * @Date 2018 年9月6日 下午 14：56：23
 */
@Service
public class StaffInfoServiceImpl implements StaffInfoService {
	
	@Resource
	private StaffInfoMapper staffInfoMapper;

	/**
	 * 登录验证
	 * @param staffNo
	 * @param passWord
	 * @return 员工信息
	 */
	@Override
	public StaffInfo login(String staffNo) {
		return staffInfoMapper.login(staffNo);
	}
	/**
	 * 添加员工信息
	 * @param staffInfo
	 * @return 受影响行数
	 */
	@Override
	public int addStaffInfo(StaffInfo staffInfo) {
		// TODO Auto-generated method stub
		return staffInfoMapper.addStaffInfo(staffInfo);
	}
	@Override
	public List<StaffInfo> getAll(String agentManager, String staffName, int current, int page) {
		// TODO Auto-generated method stub
		return staffInfoMapper.getAll(agentManager, staffName, current, page);
	}
	@Override
	public int count(String agentManager, String staffName) {
		// TODO Auto-generated method stub
		return staffInfoMapper.count(agentManager, staffName);
	}
	@Override
	public StaffInfo findById(String staffNo) {
		// TODO Auto-generated method stub
		return staffInfoMapper.findById(staffNo);
	}
	@Override
	public List<StaffInfo> allStaffInfo(long agentId) {
		// TODO Auto-generated method stub
		return staffInfoMapper.allStaffInfo(agentId);
	}
	@Override
	public int deleteUser(String agentId) {
		// TODO Auto-generated method stub
		return staffInfoMapper.deleteUser(agentId);
	}
	@Override
	public int updateStaffInfo(StaffInfo staffInfo) {
		// TODO Auto-generated method stub
		return staffInfoMapper.updateStaffInfo(staffInfo);
	}
	@Override
	public int deletestaff(String staffNo) {
		// TODO Auto-generated method stub
		return staffInfoMapper.deletestaff(staffNo);
	}
	

}