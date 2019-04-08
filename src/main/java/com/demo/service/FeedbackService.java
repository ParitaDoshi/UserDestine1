package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.FeedbackDAO;
import com.demo.vo.FeedbackVO;



@Service
public class FeedbackService {
	
	@Autowired 
	FeedbackDAO feedbackDAO;
	
	@Transactional
	public void insert(FeedbackVO feedbackVO)
	{
		feedbackDAO.insert(feedbackVO);
	}
	
	
	@Transactional
	public List search(FeedbackVO feedbackVO )
	
	{
		List ls=feedbackDAO.search(feedbackVO);
		return ls;
	}
	
	@Transactional
	public void delete(FeedbackVO feedbackVO)
	{
		feedbackDAO.delete(feedbackVO);
	}
	@Transactional
	public List loadfeedbackRecordList(FeedbackVO feedbackVO)
	{
		return feedbackDAO.loadfeedbackRecordList(feedbackVO);
	}
	
	
	

}
