package com.wind.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.wind.entity.StaffCategory;
import com.wind.entity.StaffInfo;
import com.wind.service.StaffCategoryService;
import com.wind.service.StaffInfoService;
import com.wind.utils.PageUtil;

/**
 *员工信息处理
 * @author 作者:惠腾贤
 * @createDate 创建时间：2018年9月15日 下午4:49:48
 */
@Controller
@RequestMapping("/users")
public class ControlController {
	@Resource
	private StaffInfoService staffInfoService;
	@Resource
	private StaffCategoryService StaffCategoryService;
	
	@RequestMapping("/getAll.do")
	@ResponseBody
	public String getAll(String agentManager,String staffName,Integer currents){
		System.out.println("经理的工号"+agentManager);
		System.out.println("查询员工"+staffName);
		System.out.println("当前页"+currents);
		//判断当前页
		if (currents==null||currents<1) {
			currents=1;
		}
		int page = 2;//一页显示五条
		//获取总条数
		int count = staffInfoService.count(agentManager, staffName);
		PageUtil pageUtil = new PageUtil();
		pageUtil.setTotalCount(count);//输入总条数
		pageUtil.setPageCount(page);//输入每页显示的个数，计算总页数
		pageUtil.setCurrent(currents);//处理当前页
		int current = ( pageUtil.getCurrent()-1)*page;
		List list= (List)staffInfoService.getAll(agentManager, staffName, current, page);
		list.add(pageUtil);
		System.out.println(JSONArray.toJSONStringWithDateFormat(list, "yyyy-MM-dd").toString());
		return JSONArray.toJSONStringWithDateFormat(list, "yyyy-MM-dd");
	}
	@RequestMapping("/getCateGory.do")
	@ResponseBody
	public Object getCateGory(){
		List<StaffCategory> list = StaffCategoryService.getCateGory();

		return JSONArray.toJSONString(list);

	}

	@RequestMapping("/addStaff.do")
	public String addStaff(StaffInfo staffInfo,String agentManagers){
		System.out.println("*****************"+agentManagers);
		//查询经理的所有信息
		StaffInfo staffInfos = staffInfoService.findById(agentManagers);
		List<StaffInfo> list = staffInfoService.allStaffInfo(staffInfos.getAgentId());
		//添加工号
		Integer staffNo = 0;
		if (list.size()==0) {
			staffNo = Integer.parseInt(staffInfos.getStaffNo())+1;
		}else{
			for (int i = 0; i < list.size(); i++) {
				staffNo = Integer.parseInt(list.get(list.size()-1).getStaffNo())+1;
			}
		}
		staffInfo.setStaffNo(staffNo.toString());
		//添加密码
		String hashAlgorithmName = "MD5";
		Object credentials = "123456";
		Object salt = ByteSource.Util.bytes(staffNo.toString());
		int hashIterations = 1024;
		Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
		System.out.println("得到的密码："+result);
		staffInfo.setStaffPassWord(result.toString());
		//添加所属网点编号
		staffInfo.setAgentId(staffInfos.getAgentId());
		staffInfoService.addStaffInfo(staffInfo);
		return "admin/user";
	}
	@RequestMapping("/findById.do")
	@ResponseBody
	public Object finDById(String val){
		StaffInfo staffinfo = staffInfoService.findById(val);
		return JSON.toJSONString(staffinfo);
	}
	@RequestMapping("/updateStaffInfo.do")
	public String addStaffInfo(StaffInfo staffInfo,String npw,Model model ){
		//添加密码
		String hashAlgorithmName = "MD5";
		Object credentials = npw;
		Object salt = ByteSource.Util.bytes(staffInfo.getStaffNo());
		int hashIterations = 1024;
		Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
		System.out.println("得到的密码："+result);
		staffInfo.setStaffPassWord(result.toString());
		int staffs = staffInfoService.updateStaffInfo(staffInfo);
		if (staffs>0) {
			model.addAttribute("judge", "修改成功");
		}else{
			model.addAttribute("judge", "修改失败");
		}
		return "admin/user";
	}
	@RequestMapping("/deletes.do")
	@ResponseBody
	public Object deletes(String val){
		int delete = staffInfoService.deletestaff(val);
		System.out.println(delete);
		return JSON.toJSONString(delete);
	}

}
