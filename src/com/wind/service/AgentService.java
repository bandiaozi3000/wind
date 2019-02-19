package com.wind.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Agent;
import com.wind.entity.Area;
import com.wind.entity.City;
import com.wind.entity.Province;
/**网点信息业务层
 * 
 * @author赵文超
 *
 * 2018年9月6日下午4:45:17
 */

public interface AgentService {
	/**
	 * 添加一个网点
	 * @param agent
	 * @return
	 */
	int addAgent(Agent agent);
	/**
	 * 点击某个市时查询出该市区的全部网点 [入参:城市编号 ]
	 * 
	 * @return
	 */
	List<Agent> listAgent(int cityId);
	/**
	 * 删除一个网点
	 * @return
	 */
	int deleteAgent(int agentNumber);
	/**
	 * 修改一个网点信息内容
	 * @return
	 */
	int modityAgent(Agent agent);
	/**
	 * 修改一个网点信息内容
	 * 慧藤贤版
	 * @return
	 */
	int moditystaff(Agent agent);
	/**
	 * 获取网点个数
	 * @return
	 */
	int countAgent(String agentManager,String agentName);
	/**
	 * 指定查看一个网点信息
	 * @return
	 */
	Agent getAgent(int solrId);
	/**
	 * 通过solr查看网点信息
	 * @return
	 */
	List<Agent> listSolrAgent();
	/**
	 * 用城市id查询改城市的网点---作用与门户页面
	 * @param cityId
	 * @return 该城市所有网点
	 */
	List<Agent> listAgentById( int cityId);
	/**
	 * 根据区域ID获取该区域的网点信息
	 * @param areaId
	 * @return 该区域网点
	 */
	Agent getAgentByAreaId(int areaId);
	/**
	 * 根据网点编号查询该网点信息
	 * @param agentNumber
	 * @return 该网点
	 */
	Agent getAgentByAgentNum(long agentNumber);
	/**
	 * 根据当前管理网点的负责人的工号查询下属网点
	 * @param agentManage
	 * @return 网点信息
	 */
	List<Agent> listAgentByAgentManager(String agentManager, String agentName,int current,int page);
	/**
	 * 通过区、县编号查询
	 * @return
	 */
	List<Agent> listAgentareaId();
	/**
	 * 通过工号查询下属城省
	 * @param agentManager
	 * @return 省（比如：河南省）
	 */
	List<Province> qureProvince(String agentManager);
	/**
	 * 通过工号查询下属城市
	 * @param agentManager
	 * @return 市（比如：郑州市）
	 */
	List<City> queryCity(String agentManager);
	/**
	 *  通过工号查询下属县级城市
	 * @param agentManager
	 * @return 区（县）
	 */
	List<Area> queryArea(String agentManager);
	/**
	 *根据工号查询已经添加过的城市
	 * @param agentManager
	 * @return 添加过的城市
	 */
	Agent queryId(String agentManager);
 	/**
 	 * 通过工号查询当前管理网点的所有信息
 	 * @param agentManager
 	 * @return 网点信息
 	 */
	List<Agent> queryAgentManager(int agentLevel,String agentNumber);
	/**
	 * 添加网点
	 * @param agent
	 * @return 受影响行数
	 */
	int addBranch(Agent agent);
	/**
	 * 查询属于当前工号的所有网点
	 * @param agentManager
	 * @return
	 */
	List<Agent> lower_Branches(String agentManager);
	/**
	 * 通过ID查询信息
	 * @param agentNumber
	 * @return 网点信息
	 */
	Agent findById(String agentNumber);
	/**
	 *  通过省级Id查询市
	 * @author:惠腾贤
	 * @param cityParentId
	 * @return 属于当前省的市的所有信息
	 */
	List<City> getCity(String cityParentId);
	/**
	 * 通过市级Id查询区级id
	 * @author:惠腾贤
	 * @param areaParentId
	 * @return 属于当前市的区（县）的所有信息
	 */
	List<Area> getArea(String areaParentId);
}
