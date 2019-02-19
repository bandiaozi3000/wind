package com.wind.service;

import java.util.List;
import com.wind.entity.Car;
import com.wind.entity.Cartype;
import com.wind.entity.combine.CarBelongId;
import com.wind.entity.combine.CarFlowPath;
import com.wind.entity.combine.CarGetAll;

/**
 * 车辆的service层
 *
 * @author 曹潇
 * @date 2018年9月10日上午10:23:45
 */
public interface CarService {
	/**
	 * 查询改网点下的所有车辆信息
	 * @param car
	 * @param current
	 * @param page
	 * @return 
	 */
	List<CarGetAll> listCar(Car car, String staffNo, int current, int page);
	/**
	 * 查询改网点下的所有车辆共有多少条数据
	 * @param car
	 * @param staffNo
	 * @return
	 */
	int listCarCount(Car car, String staffNo);
	/**
	 * 查询运输中车辆的运输状态
	 * @param carId 车辆id
	 * @return
	 */
	CarFlowPath listCarFlowPath(int carId);
	/**
	 * 查询车辆所能运往的网点编号
	 * @param carId
	 * @return
	 */
	List<CarBelongId> listCarBelongId(Integer carId);
	/**
	 * 获得车辆状态
	 *@Param
	 */
	List<Cartype> addType();
	/**
	 * 添加车辆
	 *@Param
	 */
	int add(Car car);
	/**
	 * 查询登录账户所属网点编号
	 *@Param
	 */
	int getAgentId(String staffNo);
}
