package com.wind.service;

import com.wind.entity.GoodSize;

/**
 * @Description  货物信息业务逻辑层
 * @author 孙黎明
 * @Date 2018年9月8日
 */
public interface GoodSizeService {
	/**
	 * 添加货物信息
	 * @param goodSize
	 * @return
	 */
    int addGoodInfo(GoodSize goodSize);
	/**
	 * 修改货物信息
	 * @param goodSize
	 * @return
	 */
	int modifyGoodInfo(GoodSize goodSize);
}
