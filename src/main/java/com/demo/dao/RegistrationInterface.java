package com.demo.dao;

import java.util.List;

import com.demo.vo.AreaVO;
import com.demo.vo.ItemVO;
import com.demo.vo.RegistrationVO;


public interface RegistrationInterface {
	
	public RegistrationVO insert(RegistrationVO registrationVO);
	
	public List edit(RegistrationVO registrationVO );
	
	public List editprofile(RegistrationVO registrationVO );

	public List search(RegistrationVO registrationVO );
	
	public RegistrationVO delete(RegistrationVO registrationVO);
	
	public List searchitem(ItemVO itemVO );
	
	
	public List searchByArea(RegistrationVO registrationVO);
	

	
	
	
}
