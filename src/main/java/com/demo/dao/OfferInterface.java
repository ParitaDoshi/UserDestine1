package com.demo.dao;

import java.util.List;

import com.demo.vo.OfferVO;



 public interface OfferInterface {
 	
    public OfferVO insert(OfferVO offerVO );
	
	public List search(OfferVO offerVO);
	
	public List edit(OfferVO offerVO );
	
	public OfferVO  delete(OfferVO offerVO);

}
