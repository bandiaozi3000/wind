package com.wind.service.impl;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.wind.dao.TransInfoMapper;
import com.wind.entity.Status;
import com.wind.entity.TransInfo;
import com.wind.entity.combine.OrderStatus;
import com.wind.entity.combine.TransInfoAgent;
import com.wind.entity.combine.WarehouseInfo;
import com.wind.service.TransInfoService;
/**
 * @Description 运输流程实现类
 * @author 杨婵
 * @Date 2018-9-6 
 */

@Service
public class TransInfoServiceImpl implements TransInfoService {

	@Resource
	private TransInfoMapper transInfoMapper;


	//判断订单是否正常
	@Override
	public int isException(String orderId) {
		return transInfoMapper.isException(orderId);
	}
	//正常单的物流查询
	@Override
	public List<TransInfoAgent> transInfoList(String orderId) {
		return transInfoMapper.transInfoList(orderId);
	}


	@Override
	//客户得到物流信息
	public List<TransInfoAgent> clientTransInfoList(String orderId) {
		return transInfoMapper.clientTransInfoList(orderId);
	}

	@Override
	//管理员得到物流信息
	public List<TransInfoAgent> adminTransInfoList(String orderId) {
		return transInfoMapper.adminTransInfoList(orderId);
	}

	@Override
	//增加运输流程
	public int addTransInfo(TransInfo transInfo) {
		return transInfoMapper.addTransInfo(transInfo);
	}

	@Override
	//得到订单状态
	public Status getOrderStatus(String orderId) {
		return transInfoMapper.getOrderStatus(orderId);
	}

	//获取最新运输信息
	@Override
	public TransInfo findNewestTransInfo(String orderId) {
		return transInfoMapper.findNewestTransInfo(orderId);
	}

	//获取当前网点仓库订单列表
	@Override
	public List<WarehouseInfo> getWarehouseList(long agentNum, int eventId, int startIndex, String keywords,
			String startTime, String endTime) {
		startIndex=(startIndex-1)*8;
		return transInfoMapper.getWarehouseList(agentNum, eventId, startIndex, keywords, startTime, endTime);
	}

	//获取当前网点仓库订单列表总数
	@Override
	public int countWarehouseList(long agentNum, int eventId, String keywords, String startTime, String endTime) {
		return transInfoMapper.countWarehouseList(agentNum, eventId, keywords, startTime, endTime);
	}

	//获取当前网点签收订单列表
	@Override
	public List<OrderStatus> getSignOrderList(long agentId, int startIndex,String keyWords, int payType, int goodsId,int statusCode) {
		startIndex=(startIndex-1)*8;
		return transInfoMapper.getSignOrderList(agentId, startIndex, keyWords, payType, goodsId,statusCode);
	}

	//获取签收订单总数
	@Override
	public int countSignOrderList(long agentId,String keyWords, int payType, int goodsId,int statusCode) {
		return transInfoMapper.countSignOrderList(agentId, keyWords, payType, goodsId,statusCode);
	}

	//获取运输信息
	@Override
	public List<TransInfoAgent> getTransInfoList(String orderId) {
		return transInfoMapper.getTransInfoList(orderId);
	}

}
