package com.demo.dao;

import java.util.List;

import com.demo.vo.ComplainVO;



public interface ComplainInterface {
	
	public ComplainVO insert(ComplainVO complainVO);
	
	public List search(ComplainVO complainVO);
	
	public ComplainVO  delete(ComplainVO complainVO);
	
	
	public void replyComplain(ComplainVO complainVO);

	public List loadUserComplainDetails(ComplainVO complainVO);

	public List loadComplaintRecordList(ComplainVO complainVO);

	public List allcomplainview(ComplainVO complainVO);

}
