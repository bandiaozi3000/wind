package com.wind.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.StaffInfo;

/**
 * @Description 员工信息Dao层接口
 *
 * @Author 唐耀家
 *
 * @Date 2018 年9月6日 下午 14：56：23
 */
public interface StaffInfoMapper {
	/**
	 * 登录验证
	 * @param staffNo
	 * @param passWord
	 * @return 员工密码
	 */
	StaffInfo login(@Param("staffNo")String staffNo);
	/**
	 * 添加员工信息
	 * @param staffInfo
	 * @return 受影响行数
	 */
	int addStaffInfo(StaffInfo staffInfo);
	/**
	 * 通过经理工号查询员工信息
	 * @param agentManager
	 * @param staffName
	 * @param current
	 * @param page
	 * @return 所有员工的信息
	 */
	List<StaffInfo> getAll(@Param("agentManager")String agentManager,@Param("staffName")String staffName,@Param("current")int current,@Param("page")int page);
	/**
	 * 通过工号查询条数
	 * @param agentManager
	 * @param staffName
	 * @param current
	 * @param page
	 * @return
	 */
	int count(@Param("agentManager")String agentManager,@Param("staffName")String staffName);
	/**
	 * 员工信息
	 * @param staffNo
	 * @return
	 */
	StaffInfo findById(@Param("staffNo")String staffNo);
	/**
	 * 查询属于同一个网点的所有员工
	 * @return
	 */
	List<StaffInfo> allStaffInfo(@Param("agentId")long agentId);
	/**
	 * 删除网点的时候，删除员工
	 * @author:惠腾贤
	 * @param agentId
	 * @return
	 */
	int deleteUser(@Param("agentId")String agentId);
	/**
	 * 修改员工信息
	 * @author:惠腾贤
	 * @param staffInfo
	 * @return
	 */
	int updateStaffInfo(StaffInfo staffInfo);
	/**
	 * 删除员工共
	 * @author:惠腾贤
	 * @param staffNo
	 * @return
	 */
	int deletestaff(@Param("staffNo")String staffNo);
}
