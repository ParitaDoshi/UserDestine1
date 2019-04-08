package com.demo.dao;

import java.util.List;

import com.demo.vo.ItemVO;
import com.demo.vo.OwnerofferVO;
import com.demo.vo.SubCategoryVO;

public interface OwnerofferInterface {
	
	 public OwnerofferVO insert(OwnerofferVO ownerofferVO);
		
		public List search(OwnerofferVO ownerofferVO);
		
		public List searchitem(OwnerofferVO ownerofferVO);
		
		public List searchitemoffer(OwnerofferVO ownerofferVO);
		
		public List edit(OwnerofferVO ownerofferVO);
		
		public OwnerofferVO  delete(OwnerofferVO ownerofferVO);
		
		public List loaditem(SubCategoryVO subcategoryvo);

		public List loaditem1(ItemVO itemvo);

}
