package com.wind.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.wind.entity.AddressBook;
import com.wind.entity.User;
import com.wind.service.AddressBookService;

@Controller
@RequestMapping("/addressBook")
public class AddressBookController {
	
	@Resource
	private AddressBookService addressBookService;
	
	@RequestMapping("/deleteAddressBook.do")
	@ResponseBody
	public Object deleteAddressBook(int addressBookId) {
		addressBookService.deleteAddressBook(addressBookId);
		String json = JSONArray.toJSONString("ok");
		return json;
	}
	@RequestMapping("/addAddressBook.do")
	@ResponseBody
	public Object updateAddressBook(AddressBook addressBook) {
		int i = addressBookService.addAddressBook(addressBook);
		Map<String, String> map = new HashMap<String,String>();
		if(i>0) {
			map.put("info", "添加成功");
		}else {
			map.put("info", "添加失败");
		}
		return JSONArray.toJSON(map);
	}
	
	@RequestMapping("/getAllAddressBook.do")
	@ResponseBody
	public Object getAllAddressBook(HttpServletRequest request) {
		User user = (User)request.getSession().getAttribute("users");
		List list = addressBookService.getAllAddressBook(user);
		String json = JSONArray.toJSONString(list);
		System.out.println(json.toString());
		return json;
	}
	
	@RequestMapping("/findById.do")
	@ResponseBody
	public Object findById(String val) {
		long id = Long.parseLong(val);
		AddressBook addressBook = addressBookService.findById(id);
		String json = JSONArray.toJSONString(addressBook);
		System.out.println(json);
		return json;
	}
	
	@RequestMapping("/open.do")
	public Object open() {
		return "usersInfo/addressBook";
	}
}
