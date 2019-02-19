package com.wind.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.wind.entity.AddressBook;
import com.wind.entity.User;
import com.wind.service.AddressBookService;
import com.wind.service.UserService;
import com.wind.utils.*;

/**
 * 用户功能
 * 
 * @author唐耀家
 *
 * 			2018年9月12日下午3:32:37
 */

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userService;
	
	@Resource
	private AddressBookService addressBookService;
	
	@RequestMapping("/register.do")
	public String register(User user,String code,HttpServletRequest request) {
		String code_Session = (String) request.getSession().getAttribute("code");
		String phone_Session = (String) request.getSession().getAttribute("number");
		int result = this.findByid(user.getUserPhone());
		if(result>0) {
			request.getSession().setAttribute("register", "手机号已注册");
			return "../zhuce";
		}else {
			if(phone_Session.equals(user.getUserPhone())&&code_Session.equals(code)) {
			user.setUserName(user.getUserPhone());
			user.setUserCode(100);
			userService.register(user);
			request.getSession().removeAttribute("register");
				return "../userlogin";
			}
		}
		return "../zhuce";
	}
	
	@RequestMapping("/login.do")
	public String login(User user,HttpServletRequest request) {
		User loginUser = userService.login(user);
		if(loginUser != null) {
			request.getSession().setAttribute("users", loginUser);
			return "../index";
		}
		return "../userlogin";
	}
	
	@RequestMapping("/sendCode.do")
	@ResponseBody
	public Object sendCode(String sendCode ,String userPhone,HttpServletRequest request){
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();
		Map<String, String> map = new HashMap<String,String>();
		for (int i = 0; i < 6; i++) {
			buffer.append(random.nextInt(10));
		}
		try {
			if (!SMSCode.sendCode(userPhone, buffer.toString())) {
				map.put("info", "发送验证码失败");
			} else {
				request.getSession().setAttribute("code", buffer.toString());
				request.getSession().setAttribute("number", userPhone);
				request.getSession().setAttribute("time", System.currentTimeMillis());
				map.put("info", "验证码发送成功");
			}
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("发生异常");
		}
		System.out.println(JSONArray.toJSONString(map));
		return JSONArray.toJSONString(map);
	}
	
	@RequestMapping("/updateUserInfo.do")
	public String updateUserInfo(String userName,HttpServletRequest request,String senderDetail,String sendAddr) {
		User user = (User)request.getSession().getAttribute("users");
		user.setUserName(userName);
		userService.updateUserInfo(user);
		request.getSession().removeAttribute("users");
		this.login(user, request);
		return "usersInfo/changeInfo";
	}
	
	@RequestMapping("/updateUserPassword.do")
	public String updateUserPassword(String userPassword,HttpServletRequest request) {
		User user = (User)request.getSession().getAttribute("users");
		user.setUserPassword(userPassword);
		userService.updateUserPassword(user);
		request.getSession().removeAttribute("users");
		this.login(user, request);
		return "usersInfo/usersInfo";
	}
	
	public int findByid(String userPhone) {
		int result = userService.findById(userPhone);
		return result;
	}
}
