package com.demo.dao;

import java.util.List;

import com.demo.vo.CityVO;



public interface CityInterface {
	
	public CityVO insert(CityVO cityVO );
	
	public List search(CityVO cityVO  );
	
	public List edit(CityVO cityVO );
	
	public CityVO delete(CityVO cityVO  );

}
