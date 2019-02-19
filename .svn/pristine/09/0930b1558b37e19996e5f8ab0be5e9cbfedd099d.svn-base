package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.StatusMapper;
import com.wind.entity.Status;
import com.wind.service.StatusService;

/**
 *快递状态处理实现类
 * @author 作者:惠腾贤
 * @createDate 创建时间：2018年9月6日 下午2:42:19
 */
@Service
public class StatusServiceImpl implements StatusService {

	@Resource
	private StatusMapper statusMapper;

	@Override
	public List<Status> listStatus() {
		return statusMapper.listStatus();
	}

	@Override
	public Status getStatus(int statusId) {
		return statusMapper.getStatus(statusId);
	}
	/**
	 * 查询异常类型
	 * @return
	 */
	@Override
	public List<Status> listAnomalyStatus() {
		return statusMapper.listAnomalyStatus();
	}
}
