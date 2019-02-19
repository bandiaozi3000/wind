package com.wind.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Anomaly;
import com.wind.entity.AnomalySearch;
import com.wind.entity.combine.AnomalyInfo;

/**
 * 异常表的service层
 * @author 曹潇
 * @date 2018年9月10日上午10:14:23
 */
public interface AnomalyService {
	/**
	 * 查询所有的异常信息 (单独网点)
	 * @param anomaly
	 * @return 异常信息集合
	 */
	public List<AnomalyInfo> listAllInAgent(int pageNo,int pageSize,AnomalySearch anomalySearch);
	
	/**
	 * 查询所有的异常信息 
	 * @param anomaly
	 * @return 异常信息集合
	 */
	public List<AnomalyInfo> listAll(int pageNo,int pageSize,AnomalySearch anomalySearch);
	
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
	public int deleteAnomaly(String orderNo,String agentNumber);
	
	/**
	 * 修改订单状态类型
	 * @param statusCode
	 * @return 修改结果
	 */
	public int modifyStatus(String orderNo,String agentNumber,String statusCode);
	
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
