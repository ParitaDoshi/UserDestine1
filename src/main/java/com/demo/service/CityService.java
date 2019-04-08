package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.CityDAO;
import com.demo.vo.CityVO;


@Service
public class CityService {
	
	@Autowired 
	
	CityDAO cityDAO;
	
	@Transactional
	public void insert(CityVO cityVO)
	{
		cityDAO.insert(cityVO);
	}

	@Transactional
	public List search(CityVO cityVO )

	{
		List ls=cityDAO.search(cityVO);
		return ls;
	}
	@Transactional
	public List edit(CityVO cityVO)

	{
		List ls=cityDAO.edit(cityVO);
		return ls;
	}
	@Transactional
	public void delete(CityVO cityVO)
	{
		cityDAO.delete(cityVO);
	}



}
