package com.wind.utils;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {

	public LinkedHashMap<String, String> buildFilterChainDefinitionMap(){
		LinkedHashMap<String, String> map = new LinkedHashMap<>();

		map.put("/login.jsp", "anon");//可以匿名访问
		map.put("/shiro/login.do", "anon");//可以匿名访问
		map.put("/shiro/logout.do","logout");
		map.put("/jsp/admin/logout", "logout");//登出	
		map.put("/statics/css/login1.css","anon");
		map.put("/statics/css/layui.css","anon");
		map.put("/statics/images/login_home_background.jpg","anon");
		/*map.put("/jsp/kefu","anon");
		map.put("/jsp/kefujsp","anon");
		map.put("/jsp/shengyu","anon");
		map.put("/jsp/usersInfo","anon");
		map.put("/statics/css","anon");*/
		map.put("/jsp/admin/**", "authc");
		map.put("/**", "anon");

		return map;
	}
}
