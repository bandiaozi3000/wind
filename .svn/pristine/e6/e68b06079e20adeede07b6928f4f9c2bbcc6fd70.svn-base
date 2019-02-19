package com.wind.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.wind.dao.CustomerMapper;
import com.wind.entity.Customer;
import com.wind.service.CustomerService;


@Service
public class CustomerServiceImpl implements CustomerService {
	@Resource
	private CustomerMapper customerMapper;
	
	

	@Override
	public int updateState(String account) {
		// TODO Auto-generated method stub
		return customerMapper.updateState(account);
	}

	@Override
	public int updateNotState(String account) {
		// TODO Auto-generated method stub
		return customerMapper.updateNotState(account);
	}

	@Override
	public int updateNotLines(String account) {
		// TODO Auto-generated method stub
		return customerMapper.updateNotLines(account);
	}

	@Override
	public int updateLines(String account) {
		// TODO Auto-generated method stub
		return customerMapper.updateNotLines(account);
	}

	@Override
	public List<Customer> getCustomer() {
		// TODO Auto-generated method stub
		return customerMapper.getCustomer();
	}

	@Override
	public Customer kefuLogin(String name, String password) {
		// TODO Auto-generated method stub
		return customerMapper.kefuLogin(name, password);
	}

}
