package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.ItemDAO;
import com.demo.vo.ItemVO;
import com.demo.vo.SubCategoryVO;


@Service
public class ItemService {
	
	@Autowired 
	
	ItemDAO itemDAO;
	
	@Transactional
	public void insert(ItemVO itemVO)
	{
		itemDAO.insert(itemVO);
	}
	
	@Transactional
	public List itemdata(ItemVO itemVO )
	
	{
		List ls=itemDAO.itemdata(itemVO);
		return ls;
	}
	@Transactional
	public List search(ItemVO itemVO )
	
	{
		List ls=itemDAO.search(itemVO);
		return ls;
	}
	@Transactional
	public List searchitem(ItemVO itemVO )
	
	{
		List ls=itemDAO.searchitem(itemVO);
		return ls;
	}
	
	@Transactional
	public List edit(ItemVO itemVO )
	
	{
		List ls=itemDAO.edit(itemVO);
		return ls;
	}
	@Transactional
	public void delete(ItemVO itemVO )
	{
		itemDAO.delete(itemVO);
	}
	@Transactional
	public List loaditem(SubCategoryVO subcategoryvo)
	{
		List ls=itemDAO.loaditem(subcategoryvo);
		
		return ls;
	}
	
	
	

}
