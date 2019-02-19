package com.wind.utils;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.wind.service.AgentService;
import com.wind.service.impl.AgentServiceImpl;

/**
 * @Description 路线工具类
 * @author 孙黎明
 * @Date 2018年9月10日
 */
@Component
public class LineUtil {
	@Resource
    private AgentService agentService;
	/**
	 * 根据订单初始网点id和目的地网点id获取订单运输路线
	 * @param senderAgentId
	 * @param signAgentId
	 * @return 路线集合
	 */
    public ArrayList<Long> getLineList(long senderAgentId,long signAgentId){
    	ArrayList<Long> lineList = new ArrayList<Long>();
    	long long1 = senderAgentId;
    	long long2 = agentService.getAgentByAgentNum(long1).getBelongId();
    	long long3 = agentService.getAgentByAgentNum(long2).getBelongId();
    	long long6 = signAgentId;
    	long long5 = agentService.getAgentByAgentNum(long6).getBelongId();
    	long long4 = agentService.getAgentByAgentNum(long5).getBelongId();
    	lineList.add(long1);
    	lineList.add(long2);
    	lineList.add(long3);
    	lineList.add(long4);
    	lineList.add(long5);
    	lineList.add(long6);
    	return lineList;
    } 

	
}



