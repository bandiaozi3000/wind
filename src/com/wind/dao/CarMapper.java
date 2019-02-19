package com.wind.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Car;
import com.wind.entity.Cartype;
import com.wind.entity.combine.CarBelongId;
import com.wind.entity.combine.CarFlowPath;
import com.wind.entity.combine.CarGetAll;

/**
 * 车辆的dao层
 *
 * @author 曹潇
 * @date 2018年9月10日上午10:22:21
 */
public interface CarMapper {
	/**
	 * 查询改网点下的所有车辆信息
	 * @param car
	 * @param current
	 * @param page
	 * @return 
	 */
	List<CarGetAll> listCar(@Param("car") Car car, @Param("staffNo") String staffNo, @Param("current") int current, @Param("page") int page);
	/**
	 * 查询改网点下的所有车辆共有多少条数据
	 * @param car
	 * @param staffNo
	 * @return
	 */
	int listCarCount(@Param("car") Car car, @Param("staffNo") String staffNo);
	/**
	 * 查询运输中车辆的运输状态
	 * @param carId 车辆id
	 * @return
	 */
	CarFlowPath listCarFlowPath(@Param("carId") int carId);
	/**
	 * 查询车辆所能运往的网点编号
	 * @param carId
	 * @return
	 */
	List<CarBelongId> listCarBelongId(@Param("carId") Integer carId);
	
	/**
	 *查看车辆类型
	 */
	List<Cartype> addType();
	/**
	 * 添加车辆信息
	 *@Param
	 */
	int add(Car car);
	/**
	 * 查询登录账户所属网点编号
	 *@Param
	 */
	int getAgentId( @Param("staffNo")String staffNo);
}
