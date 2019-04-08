package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.demo.dao.OwnerofferDAO;
import com.demo.vo.ItemVO;
import com.demo.vo.OwnerofferVO;
import com.demo.vo.SubCategoryVO;



@Service
public class OwnerofferService {
	
	@Autowired 
	OwnerofferDAO ownerofferDAO;
	
	@Transactional
	public void insert(OwnerofferVO ownerofferVO)
	{
		ownerofferDAO.insert(ownerofferVO);
	}

	@Transactional
	public List search(OwnerofferVO ownerofferVO)

	{
		List ls=ownerofferDAO.search(ownerofferVO);
		return ls;
	}
	@Transactional
	public List searchitemoffer(OwnerofferVO ownerofferVO)

	{
		List ls=ownerofferDAO.searchitemoffer(ownerofferVO);
		return ls;
	}
	@Transactional
	public List searchitem(OwnerofferVO ownerofferVO)

	{
		List ls=ownerofferDAO.searchitem(ownerofferVO);
		return ls;
	}
	@Transactional
	public List edit(OwnerofferVO ownerofferVO)

	{
		List ls=ownerofferDAO.edit(ownerofferVO);
		return ls;
	}
	@Transactional
	public void delete(OwnerofferVO ownerofferVO)
	{
		ownerofferDAO.delete(ownerofferVO);
	}
	public List loaditem(SubCategoryVO subcategoryvo) {
		return ownerofferDAO.loaditem(subcategoryvo);
	}

	public List loaditem1(ItemVO itemvo) {
		List ls=ownerofferDAO.loaditem1(itemvo);
		
		return ls;
	}

	
	
	

}
