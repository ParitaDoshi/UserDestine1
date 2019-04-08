package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.AreaDAO;
import com.demo.vo.AreaVO;


@Service
public class AreaService {
	
	@Autowired 
	AreaDAO areaDAO;
	
	@Transactional
	public void insert(AreaVO areaVO)
	{
		areaDAO.insert(areaVO);
	}

	@Transactional
	public List search(AreaVO areaVO )

	{
		List ls=areaDAO.search(areaVO);
		return ls;
	}
	@Transactional
	public List searcharea(AreaVO areaVO )

	{
		List ls=areaDAO.searcharea(areaVO);
		return ls;
	}
	@Transactional
	public List edit(AreaVO areaVO)

	{
		List ls=areaDAO.edit(areaVO);
		return ls;
	}
	@Transactional
	public void delete(AreaVO areaVO)
	{
		areaDAO.delete(areaVO);
	}

	public List loadcity(AreaVO areaVO) {
		
		
		List ls=areaDAO.loadcity(areaVO);
		return ls;
	}

	

}
