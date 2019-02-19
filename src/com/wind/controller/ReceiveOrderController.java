package com.wind.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.wind.dao.GoodsCategoryMapper;
import com.wind.entity.GoodSize;
import com.wind.entity.GoodsCategory;
import com.wind.entity.Order;
import com.wind.entity.User;
import com.wind.service.GoodSizeService;
import com.wind.service.GoodsCategoryService;
import com.wind.service.OrderService;
import com.wind.service.StaffInfoService;
import com.wind.service.UserService;
import com.wind.utils.BarcodeUtil;
import com.wind.utils.SMSCode;

/**
 * @Description 接件控制层
 * @author 孙黎明
 * @Date 2018年9月7日
 */
@Controller
public class ReceiveOrderController {
	
	@Resource
	private GoodsCategoryService goodsCategoryService;
	@Resource
	private OrderService orderService;
	@Resource
	private GoodSizeService goodSizeService;
	@Resource
	private StaffInfoService staffInfoService;
	@Resource
	private UserService userService;
	/**
	 * 查询货物的所有分类
	 * @return 货物分类列表
	 */
	@RequestMapping(value="/getGoodsCategory.do")
	@ResponseBody
	public String getGoodsCategory(){
		List<GoodsCategory> goodsCategoryList = goodsCategoryService.getGoodsCategoryList();
		String json=JSON.toJSONString(goodsCategoryList);
		return json;
	}
	
	
	/**
	 * 添加订单-------------收件员填写
	 * @param 订单类
	 * @return 订单存入数据库后返回订单页面
	 */
	@RequestMapping(value="/addOrder.do")
	public String addOrder(Order order,GoodSize goodSize,String sendAddr,String recAddr,String insuredPrice1,HttpServletRequest request ){
		double insuredPrice=0;
		double price = (Double.parseDouble(goodSize.getGoodsWeight())-1)*2+8;  //计算运费
		if(insuredPrice1!=null&&insuredPrice1!=""){
			  insuredPrice = Double.parseDouble(insuredPrice1);
		}
		order.setInsuredPrice(insuredPrice);
		long belongId = staffInfoService.login(order.getCollectorId()).getAgentId(); //获取所属网点编号
		Random random = new Random();
		String orderNo = String.valueOf(System.currentTimeMillis())+String.valueOf(random.nextInt(99999)); //获取订单号
		//生成条形码
		String path = "C:\\Users\\Administrator\\Desktop\\barcode\\"+orderNo+".png";//地址 
		BarcodeUtil.generateFile(orderNo, path);
		order.setBelongId(belongId);
		order.setOrderNo(orderNo);
		order.setStatus(1);
		order.setPrice(price);
		order.setStatusCode(1);
		order.setSenderDetail(order.getSenderDetail()+sendAddr);
		order.setSignDetail(order.getSignDetail()+recAddr);
		orderService.addOrder(order); //添加订单信息
		goodSize.setGoodsNo(orderNo);
		goodSizeService.addGoodInfo(goodSize);  //添加货物信息
		request.setAttribute("info", "订单添加成功!");
		return "admin/ReceiveOrder";
	}
	
	/**
	 * 添加订单-----------用户填写
	 * @param 订单类
	 * @return 订单存入数据库后返回订单页面
	 * @throws IOException 
	 */
	@RequestMapping("/addUserOrder.do")
	public String addUserOrder(Order order,GoodSize goodSize,String agentNumber,String sendAddr,String recAddr,String phonepd,String codepd,HttpServletRequest request){
		if((codepd!=null)&&(phonepd!=null)) {
			System.out.println(codepd);
			System.out.println(phonepd);
			String num = (String)request.getSession().getAttribute("number");
			String cod = (String)request.getSession().getAttribute("code");
			System.out.println(num);
			System.out.println(cod);
			if(codepd.equals(cod)&&num.equals(phonepd)) {
				int result = userService.findById(num);
				if(result==0) {
					User user = new User();
					user.setUserPhone(phonepd);
					user.setUserPassword("123456");
					user.setUserCode(100);
					user.setUserName(phonepd);
					userService.register(user);
					request.getSession().setAttribute("users", user);
				}else {
					User users = userService.getUser(num);
					request.getSession().setAttribute("users", users);
				}
			}else {
				return "../index";
			}
		}
		Random random = new Random();
		String orderNo = String.valueOf(System.currentTimeMillis())+String.valueOf(random.nextInt(99999)); //获取订单号
		order.setOrderNo(orderNo);
		order.setStatus(1);
		order.setStatusCode(7);
		order.setBelongId(Long.parseLong(agentNumber));
		order.setSenderDetail(order.getSenderDetail()+"-"+sendAddr);
		order.setSignDetail(order.getSignDetail()+"-"+recAddr);
		orderService.addOrder(order);
		goodSize.setGoodsNo(orderNo);
		goodSizeService.addGoodInfo(goodSize);
		try {
			SMSCode.sendINfo(order.getSenderTel());
		} catch (IOException e) {
			e.printStackTrace();
		}
		request.setAttribute("oinfo", "订单创建成功，您的订单号为："+orderNo );
		return "kehujsp/zaixian";
	}
}
