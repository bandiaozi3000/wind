package com.wind.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.wind.entity.Agent;
import com.wind.entity.Area;
import com.wind.entity.City;
import com.wind.entity.StaffInfo;
import com.wind.service.AgentService;
import com.wind.service.StaffInfoService;
import com.wind.utils.PageUtil;

/**
 * 网点控制层
 * @author 作者:惠腾贤
 * @createDate 创建时间：2018年9月8日 上午10:34:55
 */
@Controller
@RequestMapping("/agents")
public class BranchController {

	@Resource
	private StaffInfoService staffInfoService;//返回的是员工信息类

	@Resource
	private AgentService agentService;

	
	@RequestMapping("/staffInfo.do")
	public String staffInfo(String userName,Model model){
		System.out.println(userName+"***********");
		String manager = userName.substring(2, 3);
		model.addAttribute("manager", manager);
		return "admin/staffInfo";
	}
	/**
	 * 通过当前的账号信息查询网点
	 */
	@RequestMapping("/getAll.do")
	@ResponseBody
	public Object getAll(String agentManager,@RequestParam(defaultValue="a")String agentName,Integer currents){
		System.out.println("获取到的分页值"+currents);
		System.out.println("获取到的当前账号Id"+agentManager);
		System.out.println("获取到的输入的网点"+agentName);
		System.out.println("************");
		//每页显示5条
		int page = 2;
		//判断当前页是否为空或者小于1，强行赋值为1
		if (currents==null||currents<1) {
			currents=1;
		}
		if ("a".equals(agentName)) {
			agentName=null;
		}
		//获取网点总条数
		int count = agentService.countAgent(agentManager, agentName);
		//创建对象
		PageUtil pageUtil = new PageUtil();
		pageUtil.setTotalCount(count);//输入总条数
		pageUtil.setPageCount(page);//输入每页显示的个数，计算总页数
		pageUtil.setCurrent(currents);//处理当前页
		//根据工号查询当前网点编号
		//根据查询的网点编号查询下属网点的所有信息
		List list =(List)agentService.listAgentByAgentManager(agentManager, agentName,  pageUtil.getCurrent(),page);
		//添加分页对象
		list.add(pageUtil);
		return JSONArray.toJSONStringWithDateFormat(list, "yyyy-MM-dd");

	}

	@RequestMapping("/query.do")
	@ResponseBody																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			
	public Object addBranch(String agentManager){
		System.out.println("********"+agentManager);
		int grade = Integer.parseInt(agentManager.substring(2, 3));//41000001
		List list= null;
		//等级为总部的时候查询省
		if (grade==0) {
			System.out.println(grade+"省");
			list = agentService.qureProvince(agentManager);
		}
		//等级为一级的时候查询下属的所有市
		if (grade==1 ) {
			System.out.println(grade+"市");
			list = agentService.queryCity(agentManager);
		}
		//等级为二级的时候查询下属的所有区（县）
		if (grade==2 ) {
			System.out.println(grade+"县");
			list = agentService.queryArea(agentManager);
		}
		return JSONArray.toJSONString(list);
	}
	@RequestMapping("/addBranch.do")
	public String addBranch(Agent agent,String agentManager,String sex,String agentname,String agentnumber,Model model){
		System.out.println(agent.getCityId()+"************************************************************");
		System.out.println(agent.getAreaId()+"************************************************************");
		System.out.println("城市编号"+agent.getAgentCityId());
		System.out.println("所属网点的负责人工号"+agentManager);
		System.out.println("获取到的性别编号"+sex);
		//通过截取的上级网点的级别+1就是下一级的网点
		int grade = Integer.parseInt(agentManager.substring(2, 3));
		StaffInfo staffInfo = new StaffInfo();
		String newAgebtNumber="";
		//当前网点信息
		Agent agents = agentService.queryId(agentManager);
		//已经有当前下一等级的网点信息，取最后一个添加的网点编号的信息
		List<Agent> list1 = agentService.queryAgentManager(agents.getAgentLevel()+1, agentManager.substring(0,2));
		//判断添加一级网点
		if (grade==0) {
			newAgebtNumber = Long.toString(agent.getAgentCityId()).substring(0, 2)+"1001";
		}else{
			//判断没有下一级网点
			if (list1.size()==0) {
				//新的网点编号为
				newAgebtNumber = Long.toString(agents.getAgentNumber()+1000);
			}else{
				//已有网点编号+1
				for (int i = 0; i < list1.size(); i++) {
					newAgebtNumber= Long.toString(list1.get(list1.size()-1).getAgentNumber()+1);
				}
			}
		}
		//添加网点编号
		agent.setAgentNumber(Long.parseLong(newAgebtNumber));
		//添加网点级别
		agent.setAgentLevel(grade+1);
		//添加网点名
		if ((grade+1)==1) {
			agent.setAgentName(agentname+"运转中心");
		}
		if ((grade+1)==2) {
			agent.setAgentName(agentname+"中转中心");
		}
		if ((grade+1)==3) {
			agent.setAgentName(agentname+"网点");
		}
		//添加地址1，先查找上一级网点的地址2，在跟当前网点名做拼接
		//String address = agentService.queryAgentManager(agentManager).getAgentAddress()+agentname;
		agent.setAgentAddress(agent.getAgentAddress());
		//添加工号,先将工号转换为String类型的再进行拼接
		String staffNo = newAgebtNumber+"01";
		agent.setAgentManager(staffNo);
		//添加所属网点编号
		agent.setBelongId(agents.getAgentNumber());
		//添加权限
		agent.setRightId(grade+1);
		if (grade==1) {
			agent.setCityId((int)agent.getAgentCityId());
		}
		if (grade==2) {
			agent.setCityId(agents.getCityId());
			agent.setAreaId(agents.getAreaId());
		}
		//为第一次添加网点添加一个经理的所有的信息
		//添加工号
		staffInfo.setStaffNo(staffNo);
		//添加密码，使用加密的方式进行密码的加密
		String hashAlgorithmName = "MD5";
		Object credentials = "123456";
		Object salt = ByteSource.Util.bytes(staffNo);
		int hashIterations = 1024;
		Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
		System.out.println("得到的密码："+result);
		staffInfo.setStaffPassWord(result.toString());
		//添加所属网点编号
		staffInfo.setAgentId(Long.parseLong(newAgebtNumber));
		//添加姓名
		staffInfo.setStaffName(agent.getStaffName());
		//添加性别
		staffInfo.setStaffGender(Integer.parseInt(sex));
		//添加年龄
		staffInfo.setStaffAge(30);
		//添加员工类型编号,因为是经理，所以为1级类型
		staffInfo.setCategoryId(1);
		//添加电话
		staffInfo.setStaffTel(agent.getAgentTel());

		//掉用员工的添加的方法
		staffInfoService.addStaffInfo(staffInfo);
		//调用添加网点的方法
		agentService.addBranch(agent);
		String manager = agentManager.substring(2, 3);
		model.addAttribute("manager", manager);
		return "admin/staffInfo";

	}
	@RequestMapping("/findById.do")
	@ResponseBody					
	public String findById(String agentNumber){
		System.out.println(agentNumber);
		Agent agent = agentService.findById(agentNumber);
		return JSONArray.toJSONString(agent);
		
	}
	@RequestMapping("/delete.do")
	@ResponseBody					
	public String delete(String agentNumber,String agentManager){
		int agent = 0;
		List<Agent> list = agentService.lower_Branches(agentNumber);//下属网点信息
		System.out.println(agentNumber);
		if (list.size()==0) {
			agent = agentService.deleteAgent(Integer.parseInt(agentNumber));
			staffInfoService.deleteUser(agentNumber);//删除员工
		}
		return JSON.toJSONString(agent);
	}
	@RequestMapping("/update.do")
	public String update(Agent agent,Model model){
		int agents = agentService.modityAgent(agent);//修改agnet表
		int staffs = agentService.moditystaff(agent);//修啊staffInfo表
		if (agents>0 && staffs>0) {
			System.out.println("成功");
			model.addAttribute("judge", "修改成功");
			return "admin/staffInfo";
		}else{
			System.out.println("失败");
			model.addAttribute("judge", "修改失败");
			return "admin/staffInfo";
		}
	}
	@RequestMapping("/getCity.do")
	@ResponseBody
	public Object getCity(String cityParentId){
		List<City> list = agentService.getCity(cityParentId);
		System.out.println(JSON.toJSONString(list));
		return JSON.toJSONString(list);
	}
	@RequestMapping("/getArea.do")
	@ResponseBody
	public Object getArea(String areaParentId){
		List<Area> list = agentService.getArea(areaParentId);
		System.out.println(JSON.toJSONString(list));
		return JSON.toJSONString(list);
	}
	

}
