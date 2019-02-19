package com.wind.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wind.dao.AddressBookMapper;
import com.wind.entity.AddressBook;
import com.wind.entity.User;
import com.wind.service.AddressBookService;
/**
 * 地址薄的实现层
 *
 * @author 曹潇
 * @date 2018年9月11日下午4:42:36
 */
@Service
public class AddressBookServiceImpl implements AddressBookService{
	
	@Resource
	private AddressBookMapper addressBookMapper;

	@Override
	public int addAddressBook(AddressBook addressBook) {
		return addressBookMapper.addAddressBook(addressBook);
	}

	@Override
	public List<AddressBook> getAllAddressBook(User user) {
		return addressBookMapper.getAllAddressBook(user);
	}

	@Override
	public int deleteAddressBook(Integer addressBookId) {
		return addressBookMapper.deleteAddressBook(addressBookId);
	}

	@Override
	public AddressBook findById(Long addressBookId) {
		return addressBookMapper.findById(addressBookId);
	}

}
