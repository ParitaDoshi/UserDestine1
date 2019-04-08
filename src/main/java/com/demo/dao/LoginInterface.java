package com.demo.dao;

import java.util.List;

import com.demo.vo.LoginVO;

public interface LoginInterface {
	
	public LoginVO insert(LoginVO loginVO);
	
	public List searchLoginID(LoginVO loginVO);
	
	public void updatepassword(LoginVO loginVO);


	public List searchUser();

	public List searchRestaurant();
	
	public List searchOffer();
	
	public List searchComplain();
	
	public List searchFeedback();
	
	public List searchItem();
	

	
	
}
