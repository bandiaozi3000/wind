package com.wind.websocket;

import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import com.wind.loginmap.LoginMap;
/**
 * webSocket的对应地址 
 * @author 胡威
 * @date 2018年9月11日
 */
@ServerEndpoint(value="/websocket/login/{param}",configurator=GetHttpSession.class)
public class LoginWebSocket{
	/*@OnMessage
	public static void onMessage(String msg,Session session) {
		//接收信息方法，暂时用不到
	}*/

	@OnOpen
	public void onOpen(@PathParam(value="param") String param,Session session,EndpointConfig config) {
		System.out.println("获取到的参数"+param);
		//通过config对象获取httpSession
		HttpSession httpSession=(HttpSession)config.getUserProperties().get(HttpSession.class.getName());
		//获取httpSession中的用户信息
		//User user=(User)httpSession.getAttribute("user");
		String userName=param;
		/*try {
			//获取用户名
			userName=user.getUserName();//第一次建立连接时用户可能为空，如果登录和登录后的页面不在一块，其实不会出现空指针的情况历
		} catch (NullPointerException e) {
			//doNothing
		}*/
		System.out.println(userName+"的httpsession" );
		//获取旧的httpSessionId
		String oldId=LoginMap.sessionMap.get(userName);
		System.out.println("旧的id为"+oldId);
		//获取新的id
		String id=httpSession.getId();
		System.out.println(userName+"的新Id为"+id);
		if(oldId==null) {//如果旧的id为空，说明当前该账号并未有人登录
			LoginMap.sessionMap.put(userName, id);//将登录的用户和sessionId存入
		}else if(!id.equals(oldId)&&userName!=null&&userName!="") {
			//id不匹配就把原来的踢出
			//获取旧的session
			Session oldSession=LoginMap.map.get(userName);
			if(oldSession!=null) {
				try {
					//给旧的session发送踢出信号
					oldSession.getAsyncRemote().sendText("kickout");
				} catch (IllegalStateException e) {
					System.err.println("原session已经不存在");
				}
			}
			//将新的httpSessionid与账号匹配存入
			LoginMap.sessionMap.put(userName, id);
		}
		//将用户名与session唯一对应并存入
		LoginMap.map.put(userName, session);
		
	}
	@OnClose
	public void onClose(){
		System.out.println("关闭！");
	}
	
}
