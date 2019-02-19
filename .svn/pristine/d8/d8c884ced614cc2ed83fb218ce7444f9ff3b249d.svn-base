package com.wind.service;

import java.util.List;

import com.wind.entity.AddressBook;
import com.wind.entity.User;

/**
 * 地址薄service
 *
 * @author 曹潇
 * @date 2018年9月11日下午4:41:49
 */
public interface AddressBookService {
	/**
	 * 添加地址簿
	 * @param addressBook
	 * @return
	 */
	int addAddressBook(AddressBook addressBook);
	
	/**
	 * 用用户手机号查找地址簿
	 * @param addressBook
	 * @return
	 */
	List<AddressBook> getAllAddressBook(User user);
	
	/**
	 * 根据id删除地址簿
	 * @param addressBook
	 * @return
	 */
	int deleteAddressBook(Integer addressBookId);
	
	/**
	 * 地址簿id查找详情
	 * @param addressBookId
	 * @return
	 */
	AddressBook findById(Long addressBookId);
}
