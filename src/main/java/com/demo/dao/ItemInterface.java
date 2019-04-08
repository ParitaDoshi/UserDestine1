package com.demo.dao;

import java.util.List;

import com.demo.vo.ItemVO;
import com.demo.vo.RegistrationVO;
import com.demo.vo.SubCategoryVO;



public interface ItemInterface {
	
public ItemVO insert(ItemVO itemVO );
	
	public List search(ItemVO itemVO);
	
	public List searchitem(ItemVO itemVO);
	
	public List itemdata(ItemVO itemVO);
	
	public List edit(ItemVO itemVO );
	
	public ItemVO  delete(ItemVO itemVO);
	
	public List loaditem(SubCategoryVO subcategoryvo);


}
