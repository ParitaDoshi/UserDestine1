package com.demo.dao;

import java.util.List;

import com.demo.vo.SubCategoryVO;



public interface SubCategoryInterface {
	
public SubCategoryVO insert(SubCategoryVO subcategoryVO);
	
	public List search(SubCategoryVO  subcategoryVO);
	
	public List edit(SubCategoryVO  subcategoryVO);
	
	public SubCategoryVO delete(SubCategoryVO  subcategoryVO);
	
	
	
	

}
