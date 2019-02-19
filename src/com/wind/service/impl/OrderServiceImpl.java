package com.wind.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.wind.constants.AnomalyConstants;
import com.wind.dao.OrderMapper;
import com.wind.entity.Order;
import com.wind.entity.combine.OrderStatus;
import com.wind.service.OrderService;

/*import jdk.nashorn.internal.ir.annotations.Reference;*/

/**
 * @Description 订单业务逻辑实现层
 * @author 孙黎明
 * @Date 2018年9月6日
 */
@Service
public class OrderServiceImpl implements OrderService {
	@Resource
	private OrderMapper orderMapper;

	// 添加订单
	@Override
	public int addOrder(Order order) {
		return orderMapper.addOrder(order);
	}

	// 获得在线订单的预订单
	public List<OrderStatus> listOnLineOrder(String orderNo, String startTime, String endTime, Integer index,Long belongId) {
		index = (index - 1) * AnomalyConstants.PAGESIZE;
		return orderMapper.listOnLineOrder(orderNo, startTime, endTime, index,belongId);
	}

	// 订单入库，修改订单的状态，把预定订单改成正式单
	@Override
	public int modifyOrderStatus(String orderNo) {
		return orderMapper.modifyOrderStatus(orderNo);
	}

	// 获得在线订单的未处理订单
	// 获得在线订单的未处理订单
	@Override
	public List<OrderStatus> listUntreatedOrder(String orderNo, String startTime, String endTime, Integer index,Long belongId) {
		index = (index - 1) * AnomalyConstants.PAGESIZE;
		return orderMapper.listUntreatedOrder(orderNo, startTime, endTime, index,belongId);
	}

	// 修改订单的状态，把未处理订单改成预定单
	@Override
	public int modifyUntreatedStatus(String orderNo) {
		return orderMapper.modifyUntreatedStatus(orderNo);
	}

	// 获得未处理订单的条数
	@Override
	public int getUntreatedCount(String startTime, String endTime, String orderNo,Long belongId) {
		return orderMapper.getUntreatedCount(startTime, endTime, orderNo,belongId);
	}

	@Override
	public int getOnLineorderCount(String startTime, String endTime, String orderNo,Long belongId) {
		return orderMapper.getOnLineorderCount(startTime, endTime, orderNo,belongId);
	}

	@Override
	public Order getOrderById(String orderId) {
		return orderMapper.getOrderById(orderId);
	}

	@Override
	public OrderStatus getOrderStatus(String orderNo) {
		return orderMapper.getOrderStatus(orderNo);
	}

	@Override
	public int modifyUntreatedOrder(Order order) {
		return orderMapper.modifyUntreatedOrder(order);
	}

	@Override
	public OrderStatus getOrder(String orderNo) {
		return orderMapper.getOrder(orderNo);
	}

	@Override
	public List<OrderStatus> listOrderStatus(Integer index,Long agentId) {
		index = (index-1) * AnomalyConstants.PAGESIZE;
		return orderMapper.listOrderStatus(index,agentId);
	}

	@Override
	public int modifyOrder(Order order) {
		return orderMapper.modifyOrder(order);
	}

	@Override
	public int getOrderCount(Long agentId) {
		return orderMapper.getOrderCount(agentId);
	}

	//修改订单状态
	@Override
	public int modifyStatus(String orderNo, int status, int statusCode) {
		return orderMapper.modifyStatus(orderNo, status, statusCode);
	}

}
