package com.wind.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Status;
import com.wind.entity.TransInfo;
import com.wind.entity.combine.OrderStatus;
import com.wind.entity.combine.TransInfoAgent;
import com.wind.entity.combine.WarehouseInfo;

/**
 * @Description 运输流程业务逻辑层
 * @author 马彦涛
 * @Date 2018-9-6 
 */
public interface TransInfoService {
	////判断是否是异常单
	int isException(String orderId);

	//正常单的快递查询
	List<TransInfoAgent> transInfoList(String orderId);

	//客户获取运输流程的集合(获取某个订单的运输流程)
	List<TransInfoAgent> clientTransInfoList(String orderNo);

	//后台获取运输流程(某个订单号)
	List<TransInfoAgent> adminTransInfoList(String orderNo);
	//增加运输流程
	int addTransInfo(TransInfo transInfo);

	//得到订单状态
	Status getOrderStatus(String orderId);
	/**
	 * 根据订单号查询该订单最新的运输状态
	 * @param orderId
	 * @return
	 */
	TransInfo findNewestTransInfo(String orderId);

	/**
	 * 查询当前网点入库,出库订单信息
	 * @param agentId
	 * @param eventId
	 * @return
	 */
	List<WarehouseInfo> getWarehouseList(long agentNum,int eventId,int startIndex,String keywords,String startTime,String endTime);

	/**
	 * 获取当前网点仓库订单条数
	 * @param agentNum
	 * @param eventId
	 * @return
	 */
	int countWarehouseList(long agentNum,int eventId,String keywords,String startTime,String endTime);

	/**
	 * 获取当前网点签收订单列表
	 * @param agentId
	 * @param startIndex
	 * @return
	 */
	List<OrderStatus> getSignOrderList(long agentId,int startIndex,String keyWords,int payType,int goodsId,int statusCode);

	/**
	 * 获取当前网点签收订单总数
	 * @param agentId
	 * @return
	 */
	int countSignOrderList(long agentId,String keyWords,int payType,int goodsId,int statusCode);

	/**
	 * 根据订单获取运输信息
	 * @param orderId
	 * @return
	 */
	List<TransInfoAgent> getTransInfoList(String orderId);

}
