package com.wind.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wind.entity.User;

@Controller
public class PanDuan {
	
	@RequestMapping("/pd.do")
	public String pd(HttpServletRequest request) {
		User user = (User)request.getSession().getAttribute("users");
		if(user!=null) {
			System.out.println("666666666");
			return "usersInfo/usersInfo";
		}else {
			System.out.println("66999999996");
			return "../userlogin";
		}
	}
}
