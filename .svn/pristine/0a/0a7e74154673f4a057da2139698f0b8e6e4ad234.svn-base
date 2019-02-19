package com.wind.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.wind.entity.Customer;
import com.wind.service.CustomerService;



@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Resource
	private CustomerService customerService;
	@RequestMapping("/login.do")
	public String login(HttpServletRequest req) throws UnknownHostException{
		/*HttpSession session= req.getSession();
		System.err.println(req.getRemoteAddr()+"////////////////////////////////");
		Customer tomer = customerService.kefuLogin(customer);
		session.setAttribute("customer", tomer);
		String kefu=null;
		String name=null;
		if(tomer!=null){
			if(tomer.getAccount().length()>10){
				List<Customer> use=customerService.getCustomer();
				if(use!=null){
				
				for(int i =0;i<use.size();){
					int j=(int)(Math.random()*(use.size())-1);

					kefu=use.get(j).getAccount();
					System.err.println(kefu+"===================================");
					name=use.get(j).getCustomerNickname();
					req.setAttribute("keAccount", kefu);
					req.setAttribute("userName", name+"很高兴为你服务");
					
					customerService.updateLines(kefu);
					break;
				}
				}else{
					req.setAttribute("userName", "对不住，客服都在休息，等会在试");
				}
				int account = Integer.getInteger(userCode);
				userService.updateNotLines(account);
				
			}else{
				customerService.updateState(tomer.getAccount());
				customerService.updateNotLines(tomer.getAccount());
				req.setAttribute("userName", "欢迎登录客服服务系统");
			}
			session.setAttribute("customer", tomer);
			return "webSocket";
		}else{
			String login="对不起，账户或密码错误";
			req.setAttribute("tomer", login);
			return "login";
		}
		
		
		*/
		
		 String client_ip = req.getHeader("x-forwarded-for");
		    if(client_ip == null || client_ip.length() == 0 || "unknown".equalsIgnoreCase(client_ip)) {
		        client_ip = req.getHeader("Proxy-Client-IP");
		    }
		    if(client_ip == null || client_ip.length() == 0 || "unknown".equalsIgnoreCase(client_ip)) {
		        client_ip = req.getHeader("WL-Proxy-Client-IP");
		    }
		    if(client_ip == null || client_ip.length() == 0 || "unknown".equalsIgnoreCase(client_ip)) {
		        client_ip = req.getRemoteAddr();
		        if(client_ip.equals("127.0.0.1") || client_ip.equals("0:0:0:0:0:0:0:1")){
		            //根据网卡取本机配置的IP
		            InetAddress inet = null;
		            try {
		                inet = InetAddress.getLocalHost();
		            } catch (UnknownHostException e) {
		                e.printStackTrace();
		            }
		            client_ip = inet.getHostAddress();
		        }  
		    }  
		    //对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割  
		    if(client_ip != null && client_ip.length() > 15){ //"***.***.***.***".length() = 15  
		        if(client_ip.indexOf(",") > 0){
		            client_ip = client_ip.substring(0,client_ip.indexOf(","));
		        }
		    }
		    
		    String server_ip = InetAddress.getLocalHost().getHostAddress();
		    req.setAttribute("server_ip", server_ip);
		return "kefu/webSocket";
		
	}
		
	@RequestMapping("/colose.do")
	@ResponseBody
	public String colose(String account ){
		customerService.updateNotState(account);
		return "";
	}
	
	
	@RequestMapping("/oncolose.do")
	@ResponseBody
	public String onColose(String account ){
		customerService.updateNotLines(account);
		return "";
	}
	
	
	
}
