package com.wind.loginmap;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;
/**
 * 用来存储登录信息的map集合 
 * @author 胡威
 * @date 2018年9月11日
 */
public class LoginMap {
	public static final Map<String, Session> map=new HashMap<String,Session>();//该集合存储用户名对应的session
	//一旦发现sessionId与已经登录的不匹配，就通过该用户名获取对应的session向客户端发送数据，并将其踢出
	
	 
	public static final Map<String, String> sessionMap=new HashMap<String,String>();//该集合存储用户对用的sessionId
	//根据登录的用户名获取对应的sessionId，主要用来匹配当前sessionId与旧的sessionId
	
}
