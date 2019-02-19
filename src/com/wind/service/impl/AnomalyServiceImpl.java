package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.constants.AnomalyConstants;
import com.wind.dao.AnomalyMapper;
import com.wind.dao.OrderMapper;
import com.wind.dao.TransInfoMapper;
import com.wind.entity.Anomaly;
import com.wind.entity.AnomalySearch;
import com.wind.entity.TransInfo;
import com.wind.entity.combine.AnomalyInfo;
import com.wind.service.AnomalyService;

/**
 * 异常表的实现层
 * @author 曹潇
 * @date 2018年9月10日上午10:15:14
 */
@Service
public class AnomalyServiceImpl implements AnomalyService{
	@Resource
	private AnomalyMapper anomalyMapper;
	@Resource
	private TransInfoMapper transInfoMapper;
	@Resource
	private OrderMapper orderMapper;

	@Override
	public int addAnomaly(Anomaly anomaly) {
		int result1= anomalyMapper.addAnomaly(anomaly);
		int result2=orderMapper.modifyStatus(anomaly.getOrderNo(),2, anomaly.getStatusCode());
		TransInfo ti=new TransInfo();
		ti.setOrderId(anomaly.getOrderNo());
		ti.setCurrentAgentId(anomaly.getAgentNumber());
		ti.setNextAgentId(0);
		ti.setEventId(5);
		ti.setOperatorId("0");
		int result3=transInfoMapper.addTransInfo(ti);
		return result1&result2&result3;
	}

	@Override
	public int deleteAnomaly(String orderNo, String agentNumber) {
		int result1= anomalyMapper.deleteAnomaly(orderNo, agentNumber);
		int result2=orderMapper.modifyStatus(orderNo, 1, 3);
		return result1&result2;
	}

	@Override
	public int modifyStatus(String orderNo, String agentNumber, String statusCode) {
		//同时要修改order表状态
		int result1=anomalyMapper.modifyStatus(orderNo, agentNumber, statusCode);
		int result2=orderMapper.modifyStatus(orderNo, 2, Integer.parseInt(statusCode));
		return result2&result1;
		
	}

	@Override
	public int modifyAnomaly(Anomaly anomaly) {
		if(anomaly.getIssueInfo()==null) {
			anomaly.setIssueInfo("");
		}
		int result1=anomalyMapper.modifyAnomaly(anomaly);
		int result2=orderMapper.modifyStatus(anomaly.getOrderNo(), 1, 3);
		System.out.println("11111111111111111111111111111111");
		TransInfo ti=new TransInfo();
		ti.setOrderId(anomaly.getOrderNo());
		ti.setCurrentAgentId(anomaly.getAgentNumber());
		ti.setNextAgentId(0);
		ti.setEventId(6);
		ti.setOperatorId("0");
		int result3=transInfoMapper.addTransInfo(ti);
		return result1&result2&result3;
	}

	@Override
	public List<AnomalyInfo> listAllInAgent(int pageNo, int pageSize, AnomalySearch anomalySearch) {
		int startIndex=(pageNo-1)*AnomalyConstants.PAGESIZE;
		return anomalyMapper.listAllInAgent(startIndex, pageSize, anomalySearch);
	}

	@Override
	public List<AnomalyInfo> listAll(int pageNo, int pageSize, AnomalySearch anomalySearch) {
		int startIndex=(pageNo-1)*AnomalyConstants.PAGESIZE;
		return anomalyMapper.listAll(startIndex, pageSize, anomalySearch);
	}

	@Override
	public int countAll(AnomalySearch anomalySearch) {
		return anomalyMapper.countAll(anomalySearch);
	}
	
}
