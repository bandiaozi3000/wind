package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.CarMapper;
import com.wind.entity.Car;
import com.wind.entity.Cartype;
import com.wind.entity.combine.CarBelongId;
import com.wind.entity.combine.CarFlowPath;
import com.wind.entity.combine.CarGetAll;
import com.wind.service.CarService;
/**
 * 车辆的实现层
 *
 * @author 曹潇
 * @date 2018年9月10日上午10:24:29
 */
@Service
public class CarServiceImpl implements CarService{
	@Resource
	private CarMapper carMapper;
	
	/**
	 * 查询改网点下的所有车辆信息
	 */
	@Override
	public List<CarGetAll> listCar(Car car, String staffNo, int current, int page) {
		int index = (current-1)*page;
		return carMapper.listCar(car, staffNo, index, page);
	}
	
	/**
	 * 查询该网点下的所有车辆共有多少条数据 
	 */
	@Override
	public int listCarCount(Car car, String staffNo) {
		return carMapper.listCarCount(car, staffNo);
	}
	/**
	 * 查询运输中车辆的运输状态
	 * @param carId 车辆id
	 * @return
	 */
	@Override
	public CarFlowPath listCarFlowPath(int carId) {
		return carMapper.listCarFlowPath(carId);
	}

	@Override
	public List<CarBelongId> listCarBelongId(Integer carId) {
		return carMapper.listCarBelongId(carId);
	}
	@Override
	public List<Cartype> addType() {
		return carMapper.addType();
	}

	@Override
	public int add(Car car) {
		return carMapper.add(car);
	}

	@Override
	public int getAgentId(String staffNo) {
		return carMapper.getAgentId(staffNo);
	}

}
