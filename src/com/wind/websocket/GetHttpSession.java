package com.wind.websocket;

import javax.servlet.http.HttpSession;
import javax.websocket.HandshakeResponse;
import javax.websocket.server.HandshakeRequest;
import javax.websocket.server.ServerEndpointConfig;
import javax.websocket.server.ServerEndpointConfig.Configurator;
/**
 * 	通过session获取httpSession类
 * @author 胡威
 * @date 2018年9月11日
 */
public class GetHttpSession extends Configurator{
	@Override
	public void modifyHandshake(ServerEndpointConfig sec, HandshakeRequest req, HandshakeResponse res) {
		HttpSession httpSession=(HttpSession)req.getHttpSession();
		sec.getUserProperties().put(HttpSession.class.getName(), httpSession);
	}
	
	
}
