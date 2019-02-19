package com.wind.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wind.constants.AnomalyConstants;
import com.wind.entity.Anomaly;
import com.wind.entity.AnomalySearch;
import com.wind.entity.Status;
import com.wind.entity.combine.AnomalyInfo;
import com.wind.service.AnomalyService;
import com.wind.service.OrderService;
import com.wind.service.StatusService;
import com.wind.utils.PageTool;

@Controller
@RequestMapping("/anomaly")
public class AnomalyController {
	 @Resource
	private AnomalyService anomalyService;
	 @Resource
	 private StatusService statusService;
	 @Resource
	 private PageTool pageTool;
	 
	 /**
	  * 单网点查询 
	  * @param req
	  * @param anomalySearch
	  */
	@RequestMapping("/listAllInAgent.do")
	public String listAllInAgent(AnomalySearch anomalySearch,String agentCode,String pageNo,Model model){
		//获取网点id 仅查询经手该网点的信息 
		if(agentCode!=null&&agentCode!="") {
			anomalySearch.setCurrentAgentNo(agentCode);
		}
		if(pageNo==null) {
			pageNo="1";
		}
		pageTool.setPageNo(Integer.parseInt(pageNo));
		pageTool.setTotal(anomalyService.countAll(anomalySearch));
		pageTool.setTotalPage(0);
		List<AnomalyInfo> list=anomalyService.listAllInAgent(pageTool.getPageNo(), AnomalyConstants.PAGESIZE, anomalySearch);
		List<Status> statusList=statusService.listAnomalyStatus();
		model.addAttribute("list",list);
		model.addAttribute("statusList",statusList);
		model.addAttribute("pt",pageTool);
		model.addAttribute("values",anomalySearch);
		return "/admin/right/singleAnomaly";
	} 
	
	/**
	 * 总部查询 
	 * @param anomalySearch
	 * @param model
	 */
	@RequestMapping("/listAll.do")
	public String listAll(AnomalySearch anomalySearch,Model model,String pageNo){
		//总部直接查询，不需要网点编号
		if(pageNo==null) {
			pageNo="1";
		}
		anomalySearch.setCurrentAgentNo(null);//查询所有
		pageTool.setPageNo(Integer.parseInt(pageNo));
		pageTool.setTotal(anomalyService.countAll(anomalySearch));
		pageTool.setTotalPage(0);
		List<AnomalyInfo> list=anomalyService.listAll(Integer.parseInt(pageNo), AnomalyConstants.PAGESIZE, anomalySearch);
		List<Status> statusList=statusService.listAnomalyStatus();
		model.addAttribute("list",list);
		model.addAttribute("statusList",statusList);
		model.addAttribute("pt",pageTool);
		model.addAttribute("values",anomalySearch);
		return "/admin/right/anomaly";
	} 
	
	/**
	 * 添加
	 */
	@RequestMapping("/add.do")
	public String add(Anomaly anomaly) {
		//添加anomaly→添加eventId为5的信息→修改order表状态
		int result=anomalyService.addAnomaly(anomaly);
		return "redirect:/jsp/admin/right/midA.jsp";
	}
	
	/**
	 * 删除 
	 */
	@RequestMapping("/delete.do")
	@ResponseBody
	public String delete(String orderNo,String agentNumber) {
		int result = anomalyService.deleteAnomaly(orderNo, agentNumber);
		return result==1?"yes":"no";
	}
	
	/**
	 * 更新处理信息
	 */
	@RequestMapping("/modify.do")
	public String modify(Anomaly anomaly) {
		int result=anomalyService.modifyAnomaly(anomaly);
		return "redirect:/jsp/admin/right/midA.jsp";
	}
	
	/**
	 * 修改状态 
	 */
	@RequestMapping("/modifyStatus.do")
	@ResponseBody
	public String modifyStatus(String statusCode,String orderNo,String agentNumber) {
		System.out.println(statusCode+"   "+orderNo+"  "+agentNumber);
		int result=anomalyService.modifyStatus(orderNo, agentNumber, statusCode);
		return result==1?"yes":"no";
	}
}
