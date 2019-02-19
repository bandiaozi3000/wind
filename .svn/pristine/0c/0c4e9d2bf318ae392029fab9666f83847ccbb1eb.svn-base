package com.wind.websocket;

import java.util.HashMap;
import java.util.Map;
import javax.websocket.server.ServerEndpoint;

import net.sf.json.JSONObject;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;



@ServerEndpoint("/webSocket/{name}")
public class CustomerWebSocket {
		
		
	private String name;//用于记录当前websockrt是谁
	private Session session;//用来记录当前session是谁
	
	private static Map<String,CustomerWebSocket> allclients=new HashMap<>();
	
	/**
	 *
	 *@param name 参数中的name 用来区分对象是谁
	 *@param session 当前建立的连接
 	*/
	@OnOpen//当建立连接时调用此方法
	public void onOpen(@PathParam(value="name") String name,Session session){
		this.name=name;
		this.session=session;
		allclients.put(name, this);
	}

	/**
	 *用来接收客户发来的信息  这个地方根据自己的业务需求来决定写什么
	 *如果是两个人聊天的 应该是收到消息后看看给谁的然后转发给另一个人
	 *如何判断另外一个接受者是谁
	 *@Parament
	 */
	@OnMessage//当服务器收到信息时触发
	public void onMessage(Session session,String message){
		//首先解析发过来的内容，找到目标接收者
		JSONObject jsonObject=JSONObject.fromObject(message);

		String to=jsonObject.getString("toUser");//找到接受者

		//根据目标接收者，找到他的session连接
		CustomerWebSocket webSocket=allclients.get(to);

		//通过session发送消息
		if(webSocket!=null){
			Session toSession= webSocket.getSession();//获取服务器和目标接收者的连接
			if(toSession.isOpen()){//如果连接是打开状态
				toSession.getAsyncRemote().sendText(message);//找到连接的另一端，然后发消息
			}else{
				//正常来说应该缓存这个消息，这里我就直接给发送者返回一条对方不在线
				session.getAsyncRemote().sendText("对方不在线");
			}
			 
			
		}
		
		
		
	}
	@OnError//发生异常时触发
	public void onError(Session session,Throwable e){

	}
	@OnClose//关闭时触发
	public void OnClose(){

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Session getSession() {
		return session;
	}

	public void setSession(Session session) {
		this.session = session;
	}

	public static Map<String, CustomerWebSocket> getAllclients() {
		return allclients;
	}

	public static void setAllclients(Map<String, CustomerWebSocket> allclients) {
		CustomerWebSocket.allclients = allclients;
	}
	
}	


