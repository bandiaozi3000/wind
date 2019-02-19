package com.wind.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONArray;
import com.wind.constants.Constant;
import com.wind.entity.Car;
import com.wind.entity.Cartype;
import com.wind.entity.combine.CarBelongId;
import com.wind.entity.combine.CarFlowPath;
import com.wind.service.CarService;
import com.wind.service.CarStatusService;
import com.wind.utils.PageUtil;


/**
 * 车辆管理控制层
 * @author 曹潇
 * 
 * @date 2018年9月10日下午3:22:33
 */
@Controller
@RequestMapping("/car")
public class CarController {
	@Resource
	private CarService carService;
	@Resource
	private CarStatusService carStatusService;
	
	/**
	 * 王永威
	 * @param req
	 * @return
	 */
	@RequestMapping("/addType.do")
	public String addType(HttpServletRequest req){
		List<Cartype> list =carService.addType();
		HttpSession session=  req.getSession();
		session.setAttribute("list", list);
		return "admin/carmanage/addCar";
	}
	/**
	 * 王永威
	 * @param car
	 * @param req
	 * @param message
	 * @return
	 */
	@RequestMapping("/add.do")
	public String add(Car car,HttpServletRequest req,String manager){
		System.out.println("获取的工号是-------------------"+manager);
		int a = carService.getAgentId(manager);
		car.setCarBelongId(a);
		car.setCarNowAgent(a);
		int i=carService.add(car);
		String yes = null;
		if(i>0){
			yes = "yes";
			req.setAttribute("yes", yes);
			return "admin/carmanage/addCar";
		}
		else{
			yes = "no";
			req.setAttribute("yes", yes);
			return "admin/carmanage/addCar";
		}
		
	}
	/**
	 * 查询车辆所能到达的所有网点
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/listCarFlowPath2.do")
	public Object listCarBelongId2(Integer carId){
		List carFlowPathList = carService.listCarBelongId(carId);
		return JSONArray.toJSONString(carFlowPathList);
	}
	
	/**
	 * 查询运输中车辆的运输状态
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/listCarFlowPath.do")
	public Object listCarFlowPath(Integer carId){
		CarFlowPath carFlowPath = carService.listCarFlowPath(carId);
		return JSONArray.toJSONString(carFlowPath);
	}
	
	/**
	 * 修改车辆状态（运输中）
	 * @return
	 */
	@RequestMapping(value="/modityCarState2.do")
	@ResponseBody
	public Object modityCarState2(Integer carArriveAgent, Integer statusName, Integer carId){
		//查询该车辆所属于网点下所能运往网点的网点编号
		List<CarBelongId> carBelongIdList = carService.listCarBelongId(carId);
		//判断他是否能运往这个网点
		int judge = -1;
		for(CarBelongId car : carBelongIdList){
			if(car.getAgentNumber() == carArriveAgent){
				judge = 1;
			}
		}
		//进行修改,如果他不能运往这个网点，则提示他不能运往这个网点
		String chenggong = null;
		if(judge == 1){
			Car car = new Car();
			car.setCarArriveAgent(carArriveAgent);
			car.setCarId(carId);
			car.setCarState(statusName);
			int index = carStatusService.modityCarState2(car);
			if(index > 0 ){
				chenggong = "yes";
			}else{
				chenggong = "shibai";
			}
		}else{
			chenggong = "no";
		}
		return JSONArray.toJSONString(chenggong);
	}
	
	/**
	 * 修改车辆状态
	 * @param statusName
	 * @param carId
	 * @return
	 */
	@RequestMapping(value="/modityCarState.do")
	@ResponseBody
	public Object modityCarState(Integer statusName,Integer carId){
		Car car = new Car();
		car.setCarState(statusName);
		car.setCarId(carId);
		//修改状态
		int result = carStatusService.modityCarState(car);
		//用作返回判断
		String yes = null;
		if(result > 0){
			yes = "yes";
		}else{
			yes = "no";
		}
		return JSONArray.toJSONString(yes);
	}
	
	/**
	 * 查询车辆状态
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/listcarstatus.do")
	public Object getcarstatus(){
		List listcarStatus = carStatusService.listCarStatus();
		System.out.println("查询所有车辆状态的集合的长度是："+listcarStatus.size());
		return JSONArray.toJSONString(listcarStatus);
	}
	
	
	/**
	 * 查询改网点下的所有车辆信息
	 * @param currents 当前页
	 * @param driverName 模糊查询字段
	 * @param staffNo 工号用于判断属于哪个网点
	 * @return
	 */
	@RequestMapping(value="/listCar.do")
	@ResponseBody
	public Object listCar(Integer currents,String driverName,String staffNo){
		System.out.println("获取的staffNo是："+staffNo);
		System.out.println("获取的driverName是："+driverName);
		//空值进行判断
		if(currents == null || currents == 0 ){
			currents = 1;
		}
		if(driverName == null || driverName == ""){
			driverName = "";
		}
		int current = currents;
		//创建car对象
		Car car = new Car();
		car.setDriverName(driverName);
		//获取总条数
		int totalCount = carService.listCarCount(car, staffNo);
		//分页工具
		PageUtil pu = new  PageUtil();
		pu.setTotalCount(totalCount);
		pu.setPageCount(Constant.PAGE);
		pu.setCurrent(current);
		//查询数据
		List carList = carService.listCar(car, staffNo, current, Constant.PAGE);
		carList.add(pu);
		return JSONArray.toJSONStringWithDateFormat(carList, "yyyy-MM-dd");
	}
}
