package com.wind.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.wind.entity.Area;
import com.wind.entity.City;
import com.wind.entity.Province;
import com.wind.service.AreaService;
import com.wind.service.CityService;
import com.wind.service.ProvinceService;

/**
 * 选择地址三级联动 
 * @author 胡威
 * @date 2018年9月6日 下午3:48:23
 */
@Controller
public class SelectAddressController {
	@Resource
	private ProvinceService provinceService;
	@Resource
	private CityService cityService;
	@Resource
	private AreaService areaService;
	
	@RequestMapping(value="/queryProvince.do")
	@ResponseBody
	public String listProvince() {
		List<Province> provinceList=provinceService.listAllProvince();
		String json=JSON.toJSONString(provinceList);
		return json;
	}
	
	@RequestMapping(value="/queryCity.do")
	@ResponseBody
	public String listCity(String cityParentId) {
		int id=Integer.parseInt(cityParentId);
		List<City> cityList=cityService.listCityByParentId(id);
		String json=JSON.toJSONString(cityList);
		return json;
	}
	
	@RequestMapping(value="/queryArea.do")
	@ResponseBody
	public String listArea(String areaParentId) {
		int id=Integer.parseInt(areaParentId);
		List<Area> areaList=areaService.listAreaByParentId(id);
		String json=JSON.toJSONString(areaList);
		return json;
	}
}
