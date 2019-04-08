package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.LoginInterface;
import com.demo.vo.LoginVO;


@Service
public class LoginService {
	

	@Autowired 
	LoginInterface loginDAO;
	
	@Transactional
	public void insert(LoginVO loginVO)
	{
		loginDAO.insert(loginVO);
	}

	@Transactional
	public List searchLoginID(LoginVO loginVO) {
		
		List ls = loginDAO.searchLoginID(loginVO);
		return ls;
	}
	
	@Transactional
	public void updatepassword(LoginVO loginVO) 
	{
		loginDAO.updatepassword(loginVO);
		
	}

	@Transactional
	public List searchUser() {
		// TODO Auto-generated method stub
		List uls=loginDAO.searchUser();
		return uls;
	}

	@Transactional
	public List searchRestaurant() {
		// TODO Auto-generated method stub
		List rls=loginDAO.searchRestaurant();
		return rls;
	}
	
	@Transactional
	public List searchOffer() {
		// TODO Auto-generated method stub
		List ols=loginDAO.searchOffer();
		return ols;
	}
	
	@Transactional
	public List searchComplain() {
		// TODO Auto-generated method stub
		List cls=loginDAO.searchComplain();
		return cls;
	}
	
	@Transactional
	public List searchFeedback() {
		// TODO Auto-generated method stub
		List fls=loginDAO.searchFeedback();
		return fls;
	}
	
	
	@Transactional
	public List searchItem() {
		// TODO Auto-generated method stub
		List ils=loginDAO.searchItem();
		return ils;
	}
	

}
