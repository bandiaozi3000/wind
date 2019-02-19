package com.wind.controller;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.wind.entity.Status;
import com.wind.entity.combine.TransInfoAgent;
import com.wind.service.TransInfoService;
/**
 * 物流详情Controller
 *
 * @author 曹潇
 * @date 2018年9月10日下午5:59:46
 */
@Controller
@RequestMapping("/transInfo")
public class TransInfoController {
	@Resource
	private TransInfoService transInfoService;
	@RequestMapping("st.do")
	public String list(@RequestParam("orderId") String orderId,Model model){
		int isException =transInfoService.isException(orderId);
		List<TransInfoAgent> transInfoAgentList=null;
		if(isException==0){
			transInfoAgentList=transInfoService.transInfoList(orderId);
		}else{
			transInfoAgentList=transInfoService.adminTransInfoList(orderId);
		}
		Status status=transInfoService.getOrderStatus(orderId);
		System.out.println(orderId);
		model.addAttribute("status", status);
		model.addAttribute("orderId",orderId);
		model.addAttribute("transInfoAgentList", transInfoAgentList);
		System.out.println(transInfoAgentList);
		return "admin/right/transInfoAgent";
	}
	
	@RequestMapping("/clientList.do")
	public String clientList(@RequestParam("orderId") String orderId,Model model){
		int isException =transInfoService.isException(orderId);
		List<TransInfoAgent> transInfoAgentList=null;
		if(isException==0){
			transInfoAgentList=transInfoService.transInfoList(orderId);
		}else{
			transInfoAgentList=transInfoService.clientTransInfoList(orderId);
		}
		Status status=transInfoService.getOrderStatus(orderId);
		System.out.println(orderId);
		model.addAttribute("status", status);
		model.addAttribute("orderId",orderId);
		model.addAttribute("transInfoAgentList", transInfoAgentList);
		System.out.println(transInfoAgentList);
		return "kehujsp/kuaijian";
	}

	@RequestMapping("/adminList.do")
	@ResponseBody
	public String adminList(@RequestParam("orderNo") String orderNo) {
		List<TransInfoAgent> transInfoAgentList = transInfoService.getTransInfoList(orderNo);
	    String jsonStr = JSON.toJSONString(transInfoAgentList);
		return jsonStr;
	}	
}
