package com.wind.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.Car;
import com.wind.entity.CarStatus;

/**
 * 车辆状态的service层
 *
 * @author 曹潇
 * @date 2018年9月10日上午10:29:58
 */
public interface CarStatusService {
	/**
	 * 查看车辆全部状态
	 * @return
	 */
	List<CarStatus> listCarStatus();
	
	/**
	 * 修改车辆状态
	 */
	int modityCarState(Car car);
	/**
	 * 修改车辆状态2
	 */
	int modityCarState2(@Param("car") Car car);
}
