package com.demo.dao;

import java.util.List;

import com.demo.vo.FeedbackVO;


public interface FeedbackInterface {
	
public FeedbackVO insert(FeedbackVO feedbackVO);
	
	public List search(FeedbackVO feedbackVO);
	
	public FeedbackVO delete(FeedbackVO feedbackVO);
	
	public List loadfeedbackRecordList(FeedbackVO feedbackVO);
}

