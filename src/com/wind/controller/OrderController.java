package com.wind.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wind.constants.AnomalyConstants;
import com.wind.entity.StaffInfo;
import com.wind.entity.Status;
import com.wind.entity.combine.OrderSearch;
import com.wind.entity.combine.OrderStatus;
import com.wind.entity.combine.OrderStatusSolr;
import com.wind.service.AreaService;
import com.wind.service.GoodSizeService;
import com.wind.service.GoodsCategoryService;
import com.wind.service.OrderService;
import com.wind.service.StaffInfoService;
import com.wind.service.StatusService;
import com.wind.utils.PageUtilChai;

/**
 * 订单管理controller
 * @author 柴敏华
 * @date 2018年9月12日 上午10:22:29
 */
@Controller
@RequestMapping("/order")
public class OrderController {
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
	private StatusService statusService;
	@RequestMapping("/listOrder.do")
	public String listOrder(Model model,Integer currentPage,String staffNo){

		if(currentPage==null||"".equals(currentPage)){
			currentPage=1;//如果为空就强制等于1
		}
		StaffInfo staffInfo=staffInfoService.findById(staffNo);
		Long agentId=staffInfo.getAgentId();//获得当前的网点
		List<OrderStatus> orderStatusList=orderService.listOrderStatus(currentPage,agentId);
		List<Status> listStatus=statusService.listStatus();
		int totalCount=0;
		totalCount= orderService.getOrderCount(agentId);
		//这一步，无论等不等于空，currentPage就是一个数字的字符串了
		//将总条数和当前页传给工具类，后面要用
		pu.setTotalCount(totalCount);
		pu.setCurrent(currentPage);
		model.addAttribute("orderStatusList",orderStatusList);
		model.addAttribute("pu",pu);
		model.addAttribute("listStatus",listStatus);
		System.out.println(listStatus.size()+"ddddddddddddd");
		return "admin/orderList";
	}
	@RequestMapping("/listSearchOrder.do")
	public String listSearchOrder(Model model,Integer currentPage,HttpServletRequest request,String orderNo,Integer payType,Integer statusId,String orderName,String orderTel,String startAddress,String endAddress,String startTime,String endTime){
/*		HttpSession session=request.getSession();
		session.setAttribute("orderSearch", orderSearch1);*/
	
		if(currentPage==null||"".equals(currentPage)){
			currentPage=1;//如果为空就强制等于1
		}
		List<Status> listStatus=statusService.listStatus();
		//创建连接
		HttpSolrServer solrServer=new HttpSolrServer("http://192.168.173.1:9090/solr/wind");
		//创建Query对象
		SolrQuery query=new SolrQuery();
		//创建实体类集合
		List<OrderStatusSolr> list = new ArrayList<OrderStatusSolr>();

		try {
			//创建字符串
			StringBuilder params=new StringBuilder();
			//不分词

			
				if(orderNo!=null && orderNo!=""){
					query.addFilterQuery("orderNo:"+orderNo);
				}
				System.out.println(payType+"yyyyyyyyyyyyyyy");
				if(payType!=0 && payType!=null){
					query.addFilterQuery("payType:"+payType);
					System.out.println("payType:+++++++++++"+payType);
				}
				if(statusId!=0 &&statusId!=null &&  !"".equals(statusId)){
					System.out.println(statusId+"pppppppppp");
/*					Integer.parseInt(orderSearch.getStatusId())
*/					Status status=statusService.getStatus(statusId);
					query.addFilterQuery("statusName:"+status.getStatusName());
				}
				if(orderTel!=null && orderTel!=""){
					query.addFilterQuery("text:"+orderTel);
				}
				if(startTime!=null && startTime!="" && endTime!=null && endTime!=""){
					startTime = startTime+"T00:00:00Z";
					endTime= endTime+"T00:00:00Z";
					query.addFilterQuery("createTime:["+startTime+" TO "+endTime+"]");
				}
				//分词
				if(orderName!=null && orderName!=""){
					if(orderTel!=null && orderTel!=""){
						params.append("text:"+orderName+" AND text:"+orderTel);
					}else{
						params.append("text:"+orderName);
					}

				}
				if(params.length()!=0){
					System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
					if(startAddress!=null && startAddress!=""){
						params.append(" AND  senderDetail:"+startAddress);
					}
				}else{
					if(startAddress!=null && startAddress!=""){
						System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@");
						params.append(" senderDetail:"+startAddress);
					}
				}

				if(params.length()!=0){
					if(endAddress!=null && endAddress!=""){
						params.append("  AND signDetail:"+endAddress);
					}
				}else{
					if(endAddress!=null && endAddress!=""){
						params.append(" signDetail:"+endAddress);
					}
				}
			
			if( params.length()==0){
				query.setQuery("orderNo:*");
				System.out.println("+++++++++++++++++++++++++++=");
			}
			System.out.println(params.toString()+"_________________________");
			//设置查询条件
			if(params.length()!=0){

				query.setQuery(params.toString());
			}
			// 分页处理

			query.setStart((currentPage-1)*AnomalyConstants.PAGESIZE);//当前第几条
			query.setRows(AnomalyConstants.PAGESIZE);//页面容量

			if(startAddress!=null && !"".equals(startAddress)){
				// 开启高亮显示
				query.setHighlight(true);
				// 设置高亮显示的域
				query.addHighlightField("senderDetail");
				// 前缀 设置颜色
				query.setHighlightSimplePre("<font style='color:red'>");
				// 后缀
				query.setHighlightSimplePost("</font>");
			}

			QueryResponse qre = solrServer.query(query);
			//获取查询结果
			SolrDocumentList solist = qre.getResults();
			//solist.getNumFound()得到查询总条数
			System.out.println("查询总条数："+solist.getNumFound());
			//遍历集合

			for(SolrDocument so :solist) {
				if(so.get("orderNo")!=null && so.get("orderNo")!=""){
					System.out.println("====================");
					OrderStatusSolr orderSolr = new OrderStatusSolr();

					//封装对象{solr中的id类型设置成string类型否则会报类型转换异常}
					orderSolr.setBelongId((String) so.get("belongId")); //所归属网点编号
					orderSolr.setOrderId((String) so.get("solrId")); //订单id
					orderSolr.setOrderNo((String) so.get("orderNo")); //订单编号
					orderSolr.setAgentName((String)so.get("agentName"));//网点名
					orderSolr.setSenderName((String)so.get("senderName"));//寄件人姓名
					orderSolr.setSenderTel((String)so.get("senderTel")); //寄件人电话
					orderSolr.setSenderAddressId((String)so.get("senderAddressId"));//寄件人地址id(县/区  id)
					orderSolr.setSenderDetail((String)so.get("senderDetail"));//寄件人纤细地址
					orderSolr.setSignName((String)so.get("signName")); //收件人姓名
					orderSolr.setSignTel((String)so.get("signTel")); //收件人电话
					orderSolr.setSignDetail((String)so.get("signDetail"));//收件人详细地址
					orderSolr.setCollectorId((String)so.get("collectorId")); //揽件员工工号
					orderSolr.setDelivererId((String)so.get("delivererId"));//派送员工号
					orderSolr.setGoodsId((String)so.get("goodsId")); //货物分类(易碎品等)
					orderSolr.setPrice((String)so.get("price"));//订单价格
					orderSolr.setPayType((String)so.get("payType"));//付款方式(到付/寄付)
					orderSolr.setInsuredPrice((String)so.get("insuredPricev")); //保价金额(默认为0)
					orderSolr.setCreateTime((Date)so.get("createTime"));//订单创建日期
					orderSolr.setSignTime((Date)so.get("signTime"));//签收日期
					orderSolr.setStatus((String)so.get("status"));//状态(1正常/2异常)
					orderSolr.setStatusCode((String)so.get("statusCode"));//状态码
					orderSolr.setRemark((String)so.get("remark"));//备注
					orderSolr.setStatusName((String)so.get("statusName"));//状态名称
					orderSolr.setGoodsCategoryId((String)so.get("goodsCategoryId")); //商品分类id
					orderSolr.setGoodsCategoryName((String)so.get("goodsCategoryName")); //商品分类名称
					orderSolr.setPayTypeId((String)so.get("payTypeId")); //付款方式表id;
					orderSolr.setPayTypeName((String)so.get("payTypeName"));//付款方式名称
					orderSolr.setGoodsNo((String)so.get("goodsNo"));//货物/订单编号
					orderSolr.setGoodsLong((String)so.get("goodsLong"));//货物长度
					orderSolr.setGoodsWidth((String)so.get("goodsWidth"));//货物宽度
					orderSolr.setGoodsHeight((String)so.get("goodsHeight"));//货物高度
					orderSolr.setGoodsWeight((String)so.get("goodsWeight"));//货物重量
					orderSolr.setGoodsAccount((String)so.get("goodsAccount"));//货物数量

					System.out.println(")))))))))))))))))"+so.get("orderNo"));//get("id")字段名

					if(startAddress!=null && !"".equals(startAddress)){

						//创建map集合获取高亮显示字段 {address},  getHighlighting()高亮显示方法
						Map<String, Map<String, List<String>>> highlighting = qre.getHighlighting();
						System.out.println("highlighting:           "+highlighting);

						Map<String, List<String>> map = highlighting.get((String) so.get("solrId"));
						System.out.println("map:"+map.size()+" highlighting.get(so.get(\"solrId\"))"+ highlighting.get(so.get("solrId")));
						//如果找到address字段就再存入到map集合
						List<String> list1 = map.get("senderDetail");
						//判断集合为不为空
						if(list1!=null){
							orderSolr.setSenderDetail(list1.get(0));
						}else{
							orderSolr.setSenderDetail((String) so.get("senderDetail"));
						}
					}

					//添加到集合
					list.add(orderSolr);
				}
			}
		
			//这一步，无论等不等于空，currentPage就是一个数字的字符串了
			//将总条数和当前页传给工具类，后面要用
			pu.setTotalCount((int)solist.getNumFound());
			pu.setCurrent(currentPage);

		} catch (SolrServerException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("orderNo",orderNo);
		model.addAttribute("payType",payType);
		model.addAttribute("statusId",statusId);
		model.addAttribute("orderName",orderName);
		model.addAttribute("orderTel",orderTel);
		model.addAttribute("startAddress",startAddress);
		model.addAttribute("endAddress",endAddress);
		model.addAttribute("startTime",startTime);
		model.addAttribute("endTime",endTime);
		
		model.addAttribute("orderStatusList",list);
		model.addAttribute("listStatus",listStatus);
		model.addAttribute("pu",pu);

		return "admin/orderList";
	}
}
