package com.wind.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.wind.entity.Agent;
import com.wind.entity.AgentSolr;
import com.wind.entity.Area;
import com.wind.entity.City;
import com.wind.service.AgentService;
import com.wind.service.AreaService;
import com.wind.service.CityService;

/**
 * 网点信息访问层
 * 
 * @author赵文超
 *
 * 			2018年9月6日下午3:32:37
 */
@Controller
@RequestMapping("/agent")
public class AgentController {
	@Resource
	private AgentService agentService;
	@Resource
	private CityService cityService;
	@Resource
	private AreaService areaService;
	/**
	 * 门户页面查询网点信息
	 * 
	 * @param addressComponents
	 * @return
	 */
	@RequestMapping("/listAgentById.do")
	@ResponseBody
	public Object listAgentById(String addressComponents) {
		City city = cityService.findById(addressComponents);
		String jsonArrays="";
		if(city!=null) {
			List<Agent> list = agentService.listAgentById(city.getCityId());
			jsonArrays = JSONArray.toJSONStringWithDateFormat(list, "yyyy-MM-dd");
		}
		return jsonArrays;
	}

	/**
	 * 查看全部网点信息[根据城市编号查看该市里的所有网点入参为:城市编号(agentCityId)] 各省到市页面跳转展示指定的某市中的所有网点
	 * 
	 * @return
	 */
	@RequestMapping("/listAgent.do")
	public String listAgent(String furl, int city, HttpServletRequest req) {
		System.out.println("cityId:[" + city + "]");
		
		List<Agent> listAgent = agentService.listAgent(city);
		if(listAgent == null||listAgent.size()==0) {
			
			req.setAttribute("message","对不起,我们尽快完善我们的服务.");
			System.out.println("furl:  "+furl);
			return furl;
		}
		System.out.println("agentlist:[" + listAgent + "]");
		req.setAttribute("listAgent", listAgent);
		return "kehujsp/agent";
	}

	/**
	 * 添加一个网点
	 * 
	 * @param agent
	 * @return
	 */
	@RequestMapping("/addAgent.do")
	public String addAgent(Agent agent, HttpServletRequest req) {
		int i = agentService.addAgent(agent);
		if (i > 0) {
			req.setAttribute("message", "添加成功!");
		} else {
			req.setAttribute("message", "添加失败!");
		}

		return "agent";
	}

	/**
	 * 删除一个网点
	 * 
	 * @return
	 */
	@RequestMapping("/deleteAgent.do")
	public String deleteAgent(int solrId, HttpServletRequest req) {
		int i = agentService.deleteAgent(solrId);
		if (i > 0) {
			req.setAttribute("message", "删除成功!");
		} else {
			req.setAttribute("message", "删除失败!");
		}
		return "agent";
	}

	/**
	 * 修改一个网点信息内容
	 * 
	 * @return
	 */
	@RequestMapping("/modityAgent.do")
	public String modityAgent(Agent agent, HttpServletRequest req) {
		int i = agentService.modityAgent(agent);
		if (i > 0) {
			req.setAttribute("message", "修改成功!");
		} else {
			req.setAttribute("message", "修改失败!");
		}
		return "agent";
	}

	/**
	 * 获取网点个数
	 * 
	 * @return
	 */
	@RequestMapping("/countAgent.do")
	public String countAgent() {

		return "";
	}

	/**
	 * 指定查看一个网点信息
	 * 
	 * @return
	 */
	@RequestMapping("/getAgent.do")
	public String getAgent(int solrId, HttpServletRequest req) {
		Agent agent = agentService.getAgent(solrId);
		req.setAttribute("agent", agent);
		System.out.println("agent:[" + agent + "]");
		return "kehujsp/info";
	}

	/**
	 * 查询(搜索网点名或网点编号)通过solr多字段查询
	 * 
	 * @return
	 */
	@RequestMapping("/solrAgent.do")
	public String solrAgent(String furl,String address,String code, HttpServletRequest req) {
		System.out.println("text:" + address);
		System.out.println("code"+code);
		
		
		//将传入的address区域进行字符串拆分截取区县名传入数据库进行比较
		String areaName= "";
		String areaid= null;
		if(address!=null && address != "") {
		
			 String[]  strs=address.split("/");
			 for(int i=0,len=strs.length;i<len;i++){
				 areaName = strs[len-1].toString();
			     System.out.println(strs[len-1].toString());
			 }
		
			 	System.out.println("furl:   "+furl);
				System.out.println("areaName:   "+areaName);
				Area area  = areaService.getArea(areaName);
				//如果区县名传入数据库后为空直接返回到当前页面
				if(area==null) {
					req.setAttribute("message","对不起,我们尽快完善我们的服务.");
					return furl;
					
				} else {
					areaid = Integer.toString(area.getAreaId());
					System.out.println("areaid:     "+areaid);
				}
		}
		//判断code和areaid 两者是否为空进行赋值到solr
		String text = null;
		if(code != null && code != "") {
			text = code;
		}
		if(code != null  && areaid != null) {
			text = areaid;
		}else if(code == null && areaid != null){
			text = areaid;
		}else if(code != null && areaid == null) {
			text = code;
		}
		
		
		// 创建链接
		HttpSolrServer solrServer = new HttpSolrServer("http://192.168.173.1:9090/solr/wind");
		// 创建Query对象
		SolrQuery query = new SolrQuery();
		// 设置查询条件
		query.setQuery("text:" + text);
		// 创建AgentSolr集合从solr中接收数据
		List<AgentSolr> list = new ArrayList<AgentSolr>();
		try {

			QueryResponse qre = solrServer.query(query);
			// 获取查询结果
			SolrDocumentList solist = qre.getResults();
			// solist.getNumFound()得到查询总条数
			System.out.println("总条数:" + solist.getNumFound());
			if(solist.getNumFound()==0) {
				//如果为空直接返回当前页面
				System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!");
				req.setAttribute("message","对不起,我们尽快完善我们的服务.");
				return furl;
			}else {
				// 遍历集合
				for (SolrDocument so : solist) {
					// 创建AgentSolr对象将solr中的数据添加
					System.out.println("+++++++++++++++++++++");
					AgentSolr agent = new AgentSolr();
					agent.setSolrId((String) so.get("solrId"));
					agent.setAgentName((String)so.get("agentName"));
					/*agent.setAgentNumber((Integer) so.get("agentNumber"));
					agent.setAgentAddress((String) so.get("agentAddress"));
					agent.setAgentCityId((Integer) so.get("agentCityId"));
					agent.setAgentLevel((Integer) so.get("agentLevel"));
					agent.setAgentHotline((String) so.get("agentHotline"));
					agent.setAgentCode((Integer) so.get("agentCode"));
					agent.setAgentTel((String) so.get("agentTel"));
					agent.setAgentManager((String) so.get("agentManager"));
					agent.setAgentFax((String) so.get("agentFax"));
					agent.setAgentRange((String) so.get("agentRange"));
					agent.setAgentTime((String) so.get("agentTime"));
					agent.setAgentRemarks((String) so.get("agentRemarks"));
					agent.setCreationDate((Date) so.get("creationDate"));
					agent.setModifyDate((Date) so.get("modifyDate"));
					agent.setBelongId((Integer) so.get("belongId"));
					agent.setRightId((Integer) so.get("rightId"));
					agent.setStaffName((String) so.get("staffName"));
					agent.setAreaId((Integer) so.get("areaId"));
					agent.setCityId((Integer) so.get("cityId"));*/
					System.out.println("agent:" + agent);
					list.add(agent);
					// System.out.println(")))))))))))))))))"+so.get("solrId"));//get("id")字段名
					System.out.println(")))))))))))))))))" + so.get("agentAddress"));
					System.out.println(")))))))))))))))))" + so.get("creationDate"));
				}
			}
			/*for(Agent ) {
				
			}*/
		} catch (SolrServerException e) {
			e.printStackTrace();
			System.out.println(")))))))))))))))))");
			return furl;
		}catch (Exception e) {
			System.out.println("_____________________________");
			return furl;
		}
		req.setAttribute("listAgent", list);

		return "kehujsp/agent";
	}

	/**
	 * 全国到各省间的页面跳转
	 * 
	 * @param provinceId
	 *            省编号
	 * @param req
	 * @return
	 */

	@RequestMapping("/page.do")
	public String pageAgent(String provinceId, HttpServletRequest req) {
		String a =null;
		switch (provinceId) {

		case "410000":

			return "kehujsp/410000";
		case "130000":

			return "kehujsp/130000";
		case "330000":

			return "kehujsp/330000";
		case "540000":

			return "kehujsp/540000";
		case "610000":

			return "kehujsp/610000";

		default:
			a ="抱歉该地区暂不演示!";
			break;
		}
		
		req.setAttribute("message", a);
		return "kehujsp/quanguo";
	}

}
