package com.wind.controller;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.solr.common.params.CommonParams.EchoParamStyle;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wind.entity.Agent;
import com.wind.entity.Order;
import com.wind.entity.TransInfo;
import com.wind.entity.combine.OrderStatus;
import com.wind.entity.combine.WarehouseInfo;
import com.wind.service.AgentService;
import com.wind.service.OrderService;
import com.wind.service.StaffInfoService;
import com.wind.service.TransInfoService;
import com.wind.utils.LineUtil;
import com.wind.utils.PageUtil;
import com.wind.utils.PageUtilChai;

/**
 * @Description 入库出库签收控制层
 * @author 孙黎明
 * @Date 2018年9月10日
 */
@Controller
@RequestMapping(value="/warehouse")
public class WarehouseController {
	@Resource
	private TransInfoService transInfoService;
	@Resource
	private StaffInfoService staffInfoService;
	@Resource
	private AgentService agentService;
	@Resource
	private OrderService orderService;
	@Resource
	private LineUtil lineUtil;
	/**
	 * 添加运输信息
	 * @param operatorId 操作人工号
	 * @param orderId 订单号
	 * @param eventId 事件Id
	 * @return
	 */
	@RequestMapping(value="/addTransInfo.do",produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String addTransInfo(String operatorId,String orderId,int eventId){
		long nextAgentId = -1;
		TransInfo transInfo = transInfoService.findNewestTransInfo(orderId);
		long agentId = staffInfoService.login(operatorId).getAgentId();
		Order order = orderService.getOrderById(orderId); //根据订单号获取该订单详情
		if(order==null){                      //判断该订单号是否存在
			return "该订单号不存在!请核对正确后再输入!";
		}else if(order.getStatus()==1&&order.getStatusCode()==1&&eventId!=4){
			return "该订单不是正式单!请先揽件!";
		}else if(transInfo==null){           //判断该订单运输信息是否为空.若为空,则该订单还在始发地
			if(agentService.getAgentByAgentNum(agentId).getAgentLevel()!=3){  //判断当前网点是否是三级网点,若是则允许入库
				return "当前网点不属于三级网点,无法进行相关操作";
			}else{
				transInfo = new TransInfo();
			}
		}else if(transInfo.getEventId()==2&&transInfo.getNextAgentId()!=agentId){    //获取订单最新运输信息,若为运输状态则判断本网点是否是该订单前往的网点
			return "该订单不属于本网点!请确认订单入库网点信息!";
		}else if(transInfo.getEventId()==1&&transInfo.getCurrentAgentId()!=agentId){  //若订单当前状态是入库,判断订单运输信息当前网点和本网点会否一致,不一致则提示
			return "该订单不属于本网点!请确认订单出库网点信息!";
		}else if(transInfo.getEventId()==6&&transInfo.getCurrentAgentId()!=agentId){  //若订单是处理件,判断是否是发现问题网点
			return "该订单不属于本网点!请确认订单出库网点信息!";
		}else if(transInfo.getEventId()==3){   //若订单状态是签收,提示
			return "该订单已经签收,无法进行入库出库等相关操作!";
		}else if(transInfo.getEventId()==5){  //若订单状态异常,提示
			return "该订单出现异常,无法进行入库出库等相关操作!";
		}
		else if(transInfo.getEventId()==eventId){    //判断运输是否重复入库出库
			if(eventId==1){
				return "该订单已是入库状态!无法再次入库";
			}else if(eventId==2){
				return "该订单已是发出状态!无法再次发出";
			}
		}
		long senderAgentId = order.getBelongId(); //获取订单初始网点
		int signId = order.getSignAddressId(); //获取订单发往地区ID
		long signAgentId = agentService.getAgentByAreaId(signId).getAgentNumber();  //获取订单签收网点
		ArrayList<Long> lineList = lineUtil.getLineList(senderAgentId, signAgentId); //获取订单运输路线
		for(int i=0;i<lineList.size();i++){          //获取该订单的下一个运输网点
			if(lineList.get(i)==agentId&&agentId!=signAgentId){
				nextAgentId = lineList.get(i+1);
				break;
			}else if(agentId==signAgentId){   //判断当前网点是否是目的地网点
				if(eventId==2){
					return "该网点已是目的地,无法出库.请注意签收!";
				}else{
					nextAgentId = 0;
					break;
				}
			}
		}
		//将传输的数据封装成运输对象
		transInfo.setOrderId(orderId);
		transInfo.setCurrentAgentId(agentId);
		transInfo.setNextAgentId(nextAgentId);
		transInfo.setEventId(eventId);
		transInfo.setOperatorId(operatorId);
		transInfoService.addTransInfo(transInfo);
		//根据事件ID为订单赋予相应的状态
		String info=null;  //操作后返回的提示信息
		switch(eventId){               
		case 1:if(nextAgentId!=0){
			orderService.modifyStatus(order.getOrderNo(),order.getStatus(),5);
		}else{
			orderService.modifyStatus(order.getOrderNo(),order.getStatus(),8);
		}
		info = "该订单已入库!请核对信息!";
		break;
		case 2: orderService.modifyStatus(order.getOrderNo(),order.getStatus(),6);
		info = "该订单已发出!请核对信息!";
		break;
		case 3:orderService.modifyStatus(order.getOrderNo(),order.getStatus(),9);
		info = "该订单已签收!请核对信息!";
		break;
		case 4:orderService.modifyStatus(order.getOrderNo(),order.getStatus(),2);
		info = "该订单已揽件!请核对信息!";
		break;
		case 7:orderService.modifyStatus(order.getOrderNo(),2,2);
		info = "该订单已拒签!请核对信息!";
		break;
		default:;break;
		}
		return info;
	}

	/**
	 * 获取当前网点仓库订单信息
	 * @param operatorId
	 * @param eventId
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/getTransInfoList.do")
	public String getTransInfoList(String operatorId,int eventId,String keyWords,String startTime,String endTime,HttpServletRequest request){
		long agentNum = staffInfoService.login(operatorId).getAgentId();  //根据操作员工号获取网点编号
		int totalCount = transInfoService.countWarehouseList(agentNum, eventId, keyWords, startTime, endTime);  //获取要查询的订单总条数
		PageUtilChai page=new PageUtilChai();
		String currentPage=(String)request.getParameter("current");
		if(currentPage==null||"".equals(currentPage)){
			currentPage="1";
		}
		int current=Integer.parseInt(currentPage);
		page.setTotalCount(totalCount);
		page.setCurrent(current);
		List<WarehouseInfo> list=transInfoService.getWarehouseList(agentNum, eventId, page.getCurrent(), keyWords, startTime, endTime);
		request.setAttribute("page", page);
		request.setAttribute("list", list);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("keyWords", keyWords);
		request.setAttribute("startTime", startTime);
		request.setAttribute("endTime", endTime);
		switch(eventId){
		case 1 :return "admin/inWarehouse";   //返回入库界面
		case 2 :return "admin/outWarehouse";  //返回出库界面
		}
		return null;
	}

	/**
	 * 获取当前网点签收订单信息
	 * @param operatorId
	 * @param eventId
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/getSignOrderList.do")
	public String getSignOrderList(String operatorId,String keyWords,Integer payType,Integer goodsId,Integer statusCode,HttpServletRequest request){
		if(payType==null){
			payType=0;
		}
		if(goodsId==null){
			goodsId=0;
		}
		if(statusCode==null){
			statusCode=0;
		}
		long agentNum = staffInfoService.login(operatorId).getAgentId();  //根据操作员工号获取网点编号
		PageUtilChai page=new PageUtilChai();
		int totalCount = transInfoService.countSignOrderList(agentNum, keyWords,payType, goodsId, statusCode);  //获取要查询的订单总条数
		String currentPage=(String)request.getParameter("current");
		if(currentPage==null||"".equals(currentPage)){
			currentPage="1";
		}
		int current=Integer.parseInt(currentPage);
		page.setTotalCount(totalCount);
		page.setCurrent(current);
		List<OrderStatus> list=transInfoService.getSignOrderList(agentNum, page.getCurrent(), keyWords, payType, goodsId, statusCode);
		request.setAttribute("page", page);
		request.setAttribute("list", list);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("payType", payType);
		request.setAttribute("goodsId", goodsId);
		request.setAttribute("statusCode", statusCode);
		request.setAttribute("keyWords", keyWords);
		return "admin/sign"; //返回签收界面
	}
}


