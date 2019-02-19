package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.wind.dao.CarStatusMapper;
import com.wind.entity.Car;
import com.wind.entity.CarStatus;
import com.wind.service.CarStatusService;
/**
 * 车辆状态实现层
 *
 * @author 曹潇
 * @date 2018年9月10日上午10:30:40
 */
@Service
public class CarStatusServiceImpl implements CarStatusService{
	@Resource
	private CarStatusMapper carStatusMapper;
	/**
	 * 查看车辆全部状态
	 */
	@Override
	public List<CarStatus> listCarStatus() {
		return carStatusMapper.listCarStatus();
	}
	/**
	 * 修改车辆状态
	 */
	@Override
	public int modityCarState(Car car) {
		return carStatusMapper.modityCarState(car);
	}
	/**
	 * 修改车辆状态2
	 */
	@Override
	public int modityCarState2(Car car) {
		return carStatusMapper.modityCarState2(car);
	}
	
	
}
