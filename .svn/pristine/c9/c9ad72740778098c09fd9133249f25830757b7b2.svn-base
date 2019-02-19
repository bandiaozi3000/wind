package com.wind.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Anomaly;
import com.wind.entity.AnomalySearch;
import com.wind.entity.combine.AnomalyInfo;

/**
 * 异常表dao层
 * @author 曹潇
 * @date 2018年9月10日上午10:12:19
 */
public interface AnomalyMapper {
	
	/**
	 * ***************本页方法中，为避免表中的重复异常单情况，通过单号和网点id确定唯一的订单一
	 */
	
	/**
	 * 查询所有的异常信息 (单独网点)
	 * @param anomaly
	 * @return 异常信息集合
	 */
	public List<AnomalyInfo> listAllInAgent(@Param("startIndex")int startIndex,@Param("pageSize")int pageSize,@Param("anomalySearch")AnomalySearch anomalySearch);
	
	/**
	 * 查询所有的异常信息 
	 * @param anomaly
	 * @return 异常信息集合
	 */
	public List<AnomalyInfo> listAll(@Param("startIndex")int startIndex,@Param("pageSize")int pageSize,@Param("anomalySearch")AnomalySearch anomalySearch);
	
	/**
	 * 添加异常单
	 * @param anomaly
	 * @return 执行结果
	 */
	public int addAnomaly(Anomaly anomaly);
	
	/**
	 * 根据订单号删除
	 * @param orderNo
	 * @return 删除结果
	 */
	public int deleteAnomaly(@Param("orderNo")String orderNo,@Param("agentNumber")String agentNumber);
	
	/**
	 * 修改订单状态类型
	 * @param statusCode
	 * @return 修改结果
	 */
	public int modifyStatus(@Param("orderNo")String orderNo,@Param("agentNumber")String agentNumber,@Param("statusCode")String statusCode);
	
	/**
	 * 修改处理信息
	 * @param orderNo
	 * @param handling
	 * @return 执行结果
	 */
	public int modifyAnomaly(Anomaly anomaly);
	
	/**
	 * 查询数量
	 * @param agentNumber
	 * @return
	 */
	public int countAll(AnomalySearch anomalySearch);
}
