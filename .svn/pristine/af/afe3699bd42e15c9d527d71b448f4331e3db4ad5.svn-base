package com.wind.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wind.entity.Customer;
import com.wind.service.CustomerService;
import com.wind.service.StaffInfoService;

/**
 * 员工登录控制层
 * 
 * @author 作者:惠腾贤
 * @createDate 创建时间：2018年9月7日 上午10:46:17
 */
@Controller
@RequestMapping("/shiro")
public class StaffLoginController {
	@Resource
	private CustomerService customerService;
	@Resource
	private StaffInfoService staffInfoService;

	@RequestMapping("/login.do")
	public String login(@RequestParam("staffNO") String username, @RequestParam("password") String password) {
		Subject currentUser = SecurityUtils.getSubject();

		if (!currentUser.isAuthenticated()) {
			// 把用户名和密码封装为 UsernamePasswordToken 对象
			UsernamePasswordToken token = new UsernamePasswordToken(username, password);
			// rememberme
			token.setRememberMe(true);
			System.out.println("/////////////////");
			try {
				System.out.println("1. " + token.hashCode());
				// 执行登录.
				currentUser.login(token);
			}
			// ... catch more exceptions here (maybe custom ones specific to
			// your application?
			// 所有认证时异常的父类.
			catch (AuthenticationException ae) {
				// unexpected condition? error?
				System.out.println("登录失败: " + ae.getMessage());
			}
		}

		return "redirect:/jsp/admin/index.jsp";
	}


	@RequestMapping("/logout.do")
	public void logout() {
		System.out.println("aaa");
	}

}
