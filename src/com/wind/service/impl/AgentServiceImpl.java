package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wind.dao.AgentMapper;
import com.wind.entity.Agent;
import com.wind.entity.Area;
import com.wind.entity.City;
import com.wind.entity.Province;
import com.wind.service.AgentService;
/**
 * 网点信息业务层
 * @author赵文超
 *
 * 2018年9月6日下午4:25:54
 */
@Service
public class AgentServiceImpl implements AgentService{
	
	@Resource
	private AgentMapper agentMapper;

	@Override
	public int addAgent(Agent agent) {
		return agentMapper.addAgent(agent);
	}

	@Override
	public List<Agent> listAgent(int cityId) {
		return agentMapper.listAgent(cityId);
	}

	@Override
	public int deleteAgent(int agentNumber) {
		return agentMapper.deleteAgent(agentNumber);
	}

	@Override
	public int modityAgent(Agent agent) {
		return agentMapper.modityAgent(agent);
	}

	@Override
	public int moditystaff(Agent agent) {
		return agentMapper.moditystaff(agent);
	}

	@Override
	public int countAgent(String agentManager, String agentName) {
		return agentMapper.countAgent(agentManager, agentName);
	}

	@Override
	public Agent getAgent(int solrId) {
		return agentMapper.getAgent(solrId);
	}

	@Override
	public List<Agent> listSolrAgent() {
		return agentMapper.listSolrAgent();
	}

	@Override
	public List<Agent> listAgentById(int cityId) {
		return agentMapper.listAgentById(cityId);
	}

	@Override
	public Agent getAgentByAreaId(int areaId) {
		return agentMapper.getAgentByAreaId(areaId);
	}

	@Override
	public Agent getAgentByAgentNum(long agentNumber) {
		return agentMapper.getAgentByAgentNum(agentNumber);
	}

	@Override
	public List<Agent> listAgentByAgentManager(String agentManager, String agentName, int currents, int page) {
		//计算数据库分页
		int current=(currents-1)*page;
		return agentMapper.listAgentByAgentManager(agentManager, agentName, current, page);
	}

	@Override
	public List<Agent> listAgentareaId() {
		return agentMapper.listAgentareaId();
	}

	@Override
	public List<Province> qureProvince(String agentManager) {
		return agentMapper.qureProvince(agentManager);
	}

	@Override
	public List<City> queryCity(String agentManager) {
		return agentMapper.queryCity(agentManager);
	}

	@Override
	public List<Area> queryArea(String agentManager) {
		return agentMapper.queryArea(agentManager);
	}

	@Override
	public Agent queryId(String agentManager) {
		return agentMapper.queryId(agentManager);
	}

	@Override
	public List<Agent> queryAgentManager(int agentLevel, String agentNumber) {
		return agentMapper.queryAgentManager(agentLevel, agentNumber);
	}

	@Override
	public int addBranch(Agent agent) {
		return agentMapper.addBranch(agent);
	}

	@Override
	public List<Agent> lower_Branches(String agentManager) {
		return agentMapper.lower_Branches(agentManager);
	}

	@Override
	public Agent findById(String agentNumber) {
		return agentMapper.findById(agentNumber);
	}

	@Override
	public List<City> getCity(String cityParentId) {
		// TODO Auto-generated method stub
		return agentMapper.getCity(cityParentId);
	}

	@Override
	public List<Area> getArea(String areaParentId) {
		// TODO Auto-generated method stub
		return agentMapper.getArea(areaParentId);
	}

}
