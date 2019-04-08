package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.RegistrationDAO;
import com.demo.vo.AreaVO;
import com.demo.vo.ItemVO;
import com.demo.vo.RegistrationVO;





@Service
public class RegistrationService {
	
	
	@Autowired 
	RegistrationDAO registrationDAO;
	
	
	@Transactional
	public void insert(RegistrationVO registrationVO)
	{
		registrationDAO.insert(registrationVO);
	}
	
	
	
	
	@Transactional
	public List edit(RegistrationVO registrationVO)

	{
		List ls=registrationDAO.edit(registrationVO);
		return ls;
	}
	
	
	@Transactional
	public List editprofile(RegistrationVO registrationVO)

	{
		List ls=registrationDAO.editprofile(registrationVO);
		return ls;
	}
	
	
	
	@Transactional
	public List search(RegistrationVO registrationVO)

	{
		List ls=registrationDAO.search(registrationVO);
		return ls;
	}
	
	
	@Transactional
	public void delete(RegistrationVO registrationVO)
	{
		registrationDAO.delete(registrationVO);
	}
	
	
	
	@Transactional
	public List searchitem(ItemVO itemVO)

	{
		List ls=registrationDAO.searchitem(itemVO);
		return ls;
	}
	
	
	
	@Transactional
	public List searchByArea(RegistrationVO registrationVO) {
		// TODO Auto-generated method stub
		List ls=this.registrationDAO.searchByArea(registrationVO);
		
		return ls;
	}
	
	


}
