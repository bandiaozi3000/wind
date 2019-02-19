package com.wind.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wind.entity.AddressBook;
import com.wind.entity.User;

/**
 * 地址薄dao层
 *
 * @author 曹潇
 * @date 2018年9月11日下午4:39:57
 */
public interface AddressBookMapper {
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
	int deleteAddressBook(@Param("addressBookId") Integer addressBookId);
	
	/**
	 * 地址簿id查找详情
	 * @param addressBookId
	 * @return
	 */
	AddressBook findById(@Param("addressBookId") Long addressBookId);
		

}
