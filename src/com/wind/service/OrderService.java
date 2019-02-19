package com.wind.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Order;
import com.wind.entity.combine.OrderStatus;

/**
 * @Description 订单业务逻辑层
 * @author 孙黎明
 * @Date 2018年9月6日
 */
public interface OrderService {
	/**
	 * 添加订单
	 * 
	 * @param order
	 *            订单类
	 * @return
	 */
	int addOrder(Order order);

	/**
	 * 获得在线订单的预订单
	 * 
	 * @return
	 */
	List<OrderStatus> listOnLineOrder(String orderNo, String startTime, String endTime, Integer index,Long belongId);

	/**
	 * 订单入库，修改订单的状态，把预定订单改成正式单
	 * 
	 * @param orderNo
	 *            订单编号
	 * @return
	 */
	int modifyOrderStatus(String orderNo);

	/**
	 * 获得在线订单的未处理订单
	 * 
	 * @return
	 */
	List<OrderStatus> listUntreatedOrder(String orderNo, String startTime, String endTime, Integer index,Long belongId);


	/**
	 * 修改订单的状态，把未处理订单改成预定单
	 * 
	 * @param orderNo
	 *            订单编号
	 * @return
	 */
	int modifyUntreatedStatus(String orderNo);

	/**
	 * 获得未处理订单的条数
	 * 
	 * @return
	 */
	int getUntreatedCount(String startTime, String endTime, String orderNo,Long belongId);

	/**
	 * 获得预订单的条数
	 * 
	 * @return
	 */
	int getOnLineorderCount(String startTime, String endTime, String orderNo,Long belongId);

	/**
	 * 根据订单Id获得订单信息
	 * 
	 * @param orderId
	 * @return
	 */
	Order getOrderById(String orderId);

	/**
	 * 获取某个订单的详细信息（多表查）
	 * 
	 * @return
	 */
	OrderStatus getOrderStatus(String orderNo);

	/**
	 * 修改未处理订单
	 * 
	 * @return
	 */
	int modifyUntreatedOrder(Order order);

	/**
	 * 获取某个订单的详细信息
	 * 
	 * @param orderNo
	 * @return
	 */
	OrderStatus getOrder(String orderNo);
	/**
	 * 获得全部正式单
	 * 
	 * @return
	 */
	List<OrderStatus> listOrderStatus(Integer index,Long agentId);

	/**
	 * 修改订单
	 * 
	 * @return
	 */
	int modifyOrder(Order order);

	/**
	 * 获得订单表的总条数
	 * 
	 * @return
	 */
	int getOrderCount(Long agentId);

	
	/**
	   * 异常单修改状态用
	   * @param orderNo
	   * @return
	   */
	int modifyStatus(String orderNo,int status,int statusCode);
}
