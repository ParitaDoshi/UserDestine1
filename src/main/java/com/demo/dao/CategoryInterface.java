package com.demo.dao;

import java.util.List;

import com.demo.vo.CategoryVO;





public interface CategoryInterface {
	
	public CategoryVO insert(CategoryVO catvo);
	
	public List search(CategoryVO catvo);
	
	public List edit(CategoryVO catvo);
	
	public CategoryVO delete(CategoryVO catvo);
	
	

}
