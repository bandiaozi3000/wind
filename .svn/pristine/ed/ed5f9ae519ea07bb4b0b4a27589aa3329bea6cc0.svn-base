package com.wind.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Status;
import com.wind.entity.TransInfo;
import com.wind.entity.combine.OrderStatus;
import com.wind.entity.combine.TransInfoAgent;
import com.wind.entity.combine.WarehouseInfo;

/**
 * @Description 运输流程数据访问层
 * @author 马彦涛
 * @Date 2018-9-6
 */
public interface TransInfoMapper {

	//判断是否是异常单
	int isException(@Param("orderId") String orderId);

	//后台获取正常单的流程
	List<TransInfoAgent> transInfoList(@Param("orderId") String orderId);

	// 客户获取运输流程的集合(获取某个订单的运输流程)
	List<TransInfoAgent> clientTransInfoList(@Param("orderId") String orderId);

	// 后台获取运输流程(某个订单号)
	List<TransInfoAgent> adminTransInfoList(@Param("orderId") String orderId);

	// 增加运输流程
	int addTransInfo(TransInfo transInfo);

	// 得到订单状态
	Status getOrderStatus(@Param("orderId") String orderId);
	/**
	 * 根据订单号查询该订单最新的运输状态
	 * @param orderId
	 * @return
	 */
	TransInfo findNewestTransInfo(@Param("orderId")String orderId);

	/**
	 * 查询当前网点入库,出库订单信息
	 * @param agentId
	 * @param eventId
	 * @return
	 */
	List<WarehouseInfo> getWarehouseList(@Param("agentNum")long agentNum, @Param("eventId")int eventId,@Param("startIndex")int startIndex,@Param("keywords")String keywords,@Param("startTime")String startTime,@Param("endTime")String endTime);

	/**
	 * 获取当前网点仓库订单条数
	 * @param agentNum
	 * @param eventId
	 * @return
	 */
	int countWarehouseList(@Param("agentNum")long agentNum, @Param("eventId")int eventId,@Param("keywords")String keywords,@Param("startTime")String startTime,@Param("endTime")String endTime);

	/**
	 * 获取当前网点签收订单列表
	 * @param agentId
	 * @param startIndex
	 * @return
	 */
	List<OrderStatus> getSignOrderList(@Param("agentId")long agentId,@Param("startIndex")int startIndex,@Param("keywords")String keyWords,@Param("payType")int payType,@Param("goodsId")int goodsId,@Param("statusCode")int statusCode);

	/**
	 * 获取当前网点签收订单总数
	 * @param agentId
	 * @return
	 */
	int countSignOrderList(@Param("agentId")long agentId,@Param("keywords")String keyWords,@Param("payType")int payType,@Param("goodsId")int goodsId,@Param("statusCode")int statusCode);

	/**
	 * 根据订单获取运输信息
	 * @param orderId
	 * @return
	 */
	List<TransInfoAgent> getTransInfoList(@Param("orderId") String orderId);
}
