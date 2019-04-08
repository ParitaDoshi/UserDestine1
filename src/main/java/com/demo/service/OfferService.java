package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.OfferDAO;
import com.demo.vo.OfferVO;


@Service
public class OfferService {
	
	@Autowired 
	OfferDAO offerDAO;
	
	@Transactional
	public void insert(OfferVO offerVO)
	{
		offerDAO.insert(offerVO);
	}

	@Transactional
	public List search(OfferVO offerVO )

	{
		List ls=offerDAO.search(offerVO);
		return ls;
	}
	@Transactional
	public List edit(OfferVO offerVO )

	{
		List ls=offerDAO.edit(offerVO);
		return ls;
	}
	@Transactional
	public void delete(OfferVO offerVO)
	{
		offerDAO.delete(offerVO);
	}

	
	
	

}
