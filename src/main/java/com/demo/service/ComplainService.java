package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.ComplainDAO;
import com.demo.vo.ComplainVO;


@Service
public class ComplainService {
	
	@Autowired 
	
	ComplainDAO complainDAO;
	
	@Transactional
	public void insert(ComplainVO complainVO)
	{
		complainDAO.insert(complainVO);
	}
	
	@Transactional
	public List search(ComplainVO complainVO )
	
	{
		List ls=complainDAO.search(complainVO);
		return ls;
	}
	
	@Transactional
	public void delete(ComplainVO complainVO)
	{
		complainDAO.delete(complainVO);
	}
	
	@Transactional
	public void replyComplain(ComplainVO complainVO) 
	{
		complainDAO.replyComplain(complainVO);
			
	}
	@Transactional
	public List loadUserComplainDetails(ComplainVO complainVO) 
	{
		List complainList=complainDAO.loadUserComplainDetails(complainVO);
		return complainList;
	}
	@Transactional
	public List loadComplainRecordList(ComplainVO complainVO) 
	{
		List complainList=complainDAO.loadComplaintRecordList(complainVO);
		return complainList;
	}
	@Transactional
	public List allcomplainview(ComplainVO complainVO) 
	{
		return complainDAO.allcomplainview(complainVO);
	}
	

}
