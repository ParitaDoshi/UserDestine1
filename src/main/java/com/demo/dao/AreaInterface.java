package com.demo.dao;

import java.util.List;

import com.demo.vo.AreaVO;



public interface AreaInterface {
	
	public AreaVO insert(AreaVO areaVO );
	
	public List search(AreaVO areaVO   );
	
	public List edit(AreaVO areaVO );
	
	public AreaVO delete(AreaVO areaVO  );
	
	public List loadcity(AreaVO areaVO   );
	
	public List searcharea(AreaVO areaVO   );
	
	

}
