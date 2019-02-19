package com.wind.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Description
 * @author 孙黎明
 * @Date 
 */
@Controller
public class TestController {
   @RequestMapping(value="/test.do")
   @ResponseBody
   public String test(String operatorId,String eventId,String orderId){
	   System.out.println(operatorId);
	   System.out.println(eventId);
	   System.out.println(orderId);
	   return "success";
   }
}
