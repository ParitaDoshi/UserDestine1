package com.demo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.demo.dao.UserregisterDAO;
import com.demo.vo.UserregisterVO;


@Service
public class UserregisterService {
	
	@Autowired 
	UserregisterDAO userregisterDAO;
	
	@Transactional
	public void insert(UserregisterVO userregisterVO)
	{
		userregisterDAO.insert(userregisterVO);
	}
	

}
