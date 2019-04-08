package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.CategoryDAO;
import com.demo.vo.CategoryVO;





@Service
public class categoryservice {
	
	@Autowired 
	
	CategoryDAO catdao;
	
	@Transactional
	public void insert(CategoryVO catvo )
	{
		catdao.insert(catvo);
	}
	
	@Transactional
	public List search(CategoryVO catvo  )
	
	{
		List ls=catdao.search(catvo);
		return ls;
	}
	@Transactional
	public List edit(CategoryVO catvo )
	
	{
		List ls=catdao.edit(catvo);
		return ls;
	}
	@Transactional
	public void delete(CategoryVO catvo )
	{
		catdao.delete(catvo);
	}
	
	

}
