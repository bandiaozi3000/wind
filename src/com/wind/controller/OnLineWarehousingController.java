package com.wind.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.wind.entity.Area;
import com.wind.entity.GoodSize;
import com.wind.entity.GoodsCategory;
import com.wind.entity.Order;
import com.wind.entity.StaffInfo;
import com.wind.entity.combine.OrderStatus;
import com.wind.service.AgentService;
import com.wind.service.AreaService;
import com.wind.service.GoodSizeService;
import com.wind.service.GoodsCategoryService;
import com.wind.service.OrderService;
import com.wind.service.StaffInfoService;
import com.wind.service.StatusService;
import com.wind.utils.LineUtil;
import com.wind.utils.PageUtilChai;

/**
 * 在线订单入库的controller
 * @author 柴敏华
 * @date 2018年9月7日 上午9:40:14
 */
@Controller
@RequestMapping("/online")
public class OnLineWarehousingController {
	@Resource
	private OrderService orderService;
	@Resource
	private PageUtilChai pu;
	@Resource
	private GoodsCategoryService goodsCategoryService;
	@Resource
	private GoodSizeService goodSizeService;
	@Resource
	private AreaService areaService;
	@Resource
	private StaffInfoService staffInfoService;
	@Resource
	private AgentService agentService;
	@Resource
	private LineUtil lineUtil;
	//获得所有的预订单，并返回warehousing.jsp
	@RequestMapping("/listOnLine.do")
	public String listOnLine(Integer currentPage,Model model,HttpServletRequest request,String startTime,String endTime,String orderNo,String staffNo){
		if(currentPage==null||"".equals(currentPage)){
			currentPage=1;//如果为空就强制等于1
		}
		HttpSession session=request.getSession();
		System.out.println(staffNo+"oooooooooooooo");
		StaffInfo staffInfo=staffInfoService.findById(staffNo);
		Long agentId=staffInfo.getAgentId();//获得当前的网点
		List<OrderStatus> orderOnLineList=orderService.listOnLineOrder(orderNo, startTime, endTime, currentPage,agentId);
		int totalCount=0;
		totalCount= orderService.getOnLineorderCount(startTime, endTime,orderNo,agentId);
		//这一步，无论等不等于空，currentPage就是一个数字的字符串了
		//将总条数和当前页传给工具类，后面要用
	
		String message1=(String) session.getAttribute("message");
		session.removeAttribute("message");
		request.setAttribute("message1", message1);
		pu.setTotalCount(totalCount);
		pu.setCurrent(currentPage);
		model.addAttribute("orderOnLineList",orderOnLineList);
		model.addAttribute("pu",pu);
		model.addAttribute("startTime",startTime);
		model.addAttribute("endTime",endTime);
		model.addAttribute("orderNo",orderNo);
		return "admin/online/warehousing";
	}
	//订单入库，修改订单状态，把预订单变成正式单
	@RequestMapping("/modifyOrderStatus.do")
	@ResponseBody
	public String modifyOrderStatus(@RequestParam("orderNo")String orderNo){
		int result=orderService.modifyOrderStatus(orderNo);
		HashMap<String, Object> map=new HashMap<String, Object>();
		if(result>0){
			map.put("result", "yes");
		}else{
			map.put("result", "no");
		}
		String jsonStr=JSONArray.toJSONString(map);
		return jsonStr;
	}

	//获得所有的未处理单，并返回untreated.jsp
	@RequestMapping("/listUntreated.do")
	public String listUntreated(Integer currentPage,Model model,HttpServletRequest request,String startTime,String endTime,String orderNo,String staffNo){
		if(currentPage==null||"".equals(currentPage)){
			currentPage=1;//如果为空就强制等于1
		}
		System.out.println(staffNo+"ppppppppppp");
		StaffInfo staffInfo=staffInfoService.findById(staffNo);
		Long agentId=staffInfo.getAgentId();
		List<OrderStatus> orderUntreatedList=orderService.listUntreatedOrder(orderNo, startTime, endTime,currentPage,agentId);
		int totalCount=0;
		totalCount= orderService.getUntreatedCount(startTime, endTime,orderNo,agentId);
/*		if((orderNo!=null && orderNo!="")||((startTime!=null && startTime!="" )&&(endTime!=null && endTime!=""))){
			
		}*/
		//这一步，无论等不等于空，currentPage就是一个数字的字符串了
		//将总条数和当前页传给工具类，后面要用
		HttpSession session=request.getSession();
		String message1=(String) session.getAttribute("message");
		session.removeAttribute("message1");
		request.setAttribute("message1", message1);
		System.out.println(message1+"===============");
		pu.setTotalCount(totalCount);
		pu.setCurrent(currentPage);
		model.addAttribute("orderUntreatedList",orderUntreatedList);
		model.addAttribute("startTime",startTime);
		model.addAttribute("endTime",endTime);
		model.addAttribute("orderNo",orderNo);
		model.addAttribute("pu",pu);
	
		return "admin/online/untreated";
	}
	//订单入库，修改订单状态，把未处理单变成预定单
	@RequestMapping("/modifyUntreated.do")
	@ResponseBody
	public String modifyUntreated(@RequestParam("orderNo")String orderNo){
		int result=orderService.modifyUntreatedStatus(orderNo);
		HashMap<String, Object> map=new HashMap<String, Object>();
		if(result>0){
			map.put("result", "yes");
		}else{
			map.put("result", "no");
		}
		String jsonStr=JSONArray.toJSONString(map);
		return jsonStr;
	}
	//获得未处理订单的条数
	@RequestMapping("/getUntreatedCount.do")
	@ResponseBody
	public String getUntreatedCount(Model model,String startTime,String endTime,String orderNo,String staffNo ){
		StaffInfo staffInfo=staffInfoService.findById(staffNo);
		Long agentId=staffInfo.getAgentId();
		int untreatedCount=orderService.getUntreatedCount(startTime, endTime, orderNo, agentId);
		System.out.println(untreatedCount+"8888888888");
		
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("untreatedCount", untreatedCount);
		String jsonStr=JSONArray.toJSONString(map);
		return jsonStr;
	}
	//获得某个订单的详细信息
	@RequestMapping("/getOrderStatus.do")
	@ResponseBody
	public String getOrderStatus(Model model,@RequestParam("orderNo")String orderNo){
		OrderStatus orderStatus=orderService.getOrderStatus(orderNo);
		String jsonStr=JSONArray.toJSONString(orderStatus);
		return jsonStr;
	}
	//跳转到修改页面
	@RequestMapping("/modifyUntreatedOrder.do")
	public String modifyUntreatedOrder(Model model,String orderNo,int areaId,int signAddressId,String orderPath,HttpServletRequest request){
		//通过areaId获得area
		System.out.println(orderNo+"ppppppppppppp");
		List<GoodsCategory> listGoodsCategory=goodsCategoryService.getGoodsCategoryList();
		OrderStatus order=orderService.getOrder(orderNo);
System.out.println(order+"oooooooooo");
		Area area=areaService.getAreaDetail(areaId);
		//通过字符产截取获得该订单的寄件地址省市县
		String areaDetail=order.getSenderDetail().substring(0,area.getAreaDetail().length()+2);
		//通过字符产截取获得该订单的寄件地址的详细地址
		String senderDetail=order.getSenderDetail().substring(area.getAreaDetail().length()+2);
		Area signArea=areaService.getAreaDetail(signAddressId);
		//通过字符产截取获得该订单的寄件地址省市县
		String signAreaDetail=order.getSignDetail().substring(0,signArea.getAreaDetail().length()+2);
		//通过字符产截取获得该订单的寄件地址的详细地址
		String signDetail=order.getSignDetail().substring(signArea.getAreaDetail().length()+2);
		HttpSession session=request.getSession();
		session.setAttribute("orderPath", orderPath);
		model.addAttribute("areaDetail",areaDetail);
		model.addAttribute("senderDetail",senderDetail);
		model.addAttribute("signAreaDetail",signAreaDetail);
		model.addAttribute("signDetail",signDetail);
		model.addAttribute("order",order);
		model.addAttribute("listGoodsCategory",listGoodsCategory);
		return "admin/online/modifyuntreated";
	}
	//订单修改后进行处理
	@RequestMapping("/doModifyUntreatedOrder.do")
	public String doModifyUntreatedOrder(Order order,GoodSize goodSize,String sendAddr,String recAddr,String insuredPrice1,HttpServletRequest request,String staffNo){
		if(insuredPrice1==null){
			 double insuredPrice = 0;
			 order.setInsuredPrice(insuredPrice);
		}
		HttpSession session=request.getSession();
		String orderPath=(String)session.getAttribute("orderPath");
		order.setSenderDetail(order.getSenderDetail()+sendAddr);
		order.setSignDetail(order.getSignDetail()+recAddr);
		int resultOrder=orderService.modifyOrder(order);
		int resultGoodsSize=goodSizeService.modifyGoodInfo(goodSize);
		System.out.println(resultOrder+"wwwwwwwwww"+resultGoodsSize);
		if("untreated".equals(orderPath)){
			request.setAttribute("message", "修改成功！");
			return "redirect:/online/listUntreated.do?staffNo="+staffNo;
		}else if("wareshousing".equals(orderPath)){
			request.setAttribute("message", "修改成功！");
			return "redirect:/online/listOnLine.do?staffNo="+staffNo;
		}else{
			request.setAttribute("message", "修改失败！");
			//有问题，不知道去哪
			return "redirect:/online/listUntreated.do";
		}
	}
	//获得未处理订单的条数实现气泡提醒
		@RequestMapping("/untreatedCount.do")
		@ResponseBody
		public String untreatedCount(Model model,String startTime,String endTime,String orderNo,String staffNo){
			System.out.println("aaaaaaaaaaaaa");
			System.out.println(staffNo+"ddddddd");
			StaffInfo staffInfo=staffInfoService.findById(staffNo);
			Long agentId=staffInfo.getAgentId();
			int untreatedCount=orderService.getUntreatedCount(startTime, endTime,orderNo,agentId);
			HashMap<String, Object> map=new HashMap<String, Object>();
			map.put("untreatedCount", untreatedCount);
			System.out.println(untreatedCount+"kkkkkkkkkk");
			String jsonStr=JSONArray.toJSONString(map);
			return jsonStr;
		}
}
