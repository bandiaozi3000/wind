package com.wind.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Status;

/**
*状态表接口
* @author 作者:惠腾贤
* @createDate 创建时间：2018年9月6日 下午3:44:58
*/
public interface StatusMapper {
	/**
	 * 获得状态表的全部信息
	 * @return
	 */
	public List<Status> listStatus();
	/**
	 * 根据状态id获取状态的statusCode和status
	 * @param statusId
	 * @return
	 */
	public Status getStatus(@Param("statusId")int statusId);
	/**
	 * 查询异常类型
	 * @return
	 */
	public List<Status> listAnomalyStatus();
}
