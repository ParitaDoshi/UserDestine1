package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.CityService;
import com.demo.vo.CityVO;

@RequestMapping(value="admin/")
@Controller
public class CityController {
	
	@Autowired
	CityService cityService;
	
	@RequestMapping(value = "citypage", method = RequestMethod.GET)
	public ModelAndView citypageopen(@ModelAttribute CityVO cityVO) 
	{
		
		return new ModelAndView("admin/addCity","x",new CityVO());
		
		
	}
	
	
	@RequestMapping(value = "addcity", method = RequestMethod.GET)
	public ModelAndView insertcitydata(@ModelAttribute CityVO cityVO  )
	{
		cityVO.setCitydeletestatus("active");
		cityService.insert(cityVO);
		return new ModelAndView("admin/addCity","x",new CityVO());
		
	}
	
	
	
	@RequestMapping(value = "viewcitypage", method = RequestMethod.GET)
	public ModelAndView cityviewpage(@ModelAttribute CityVO cityVO) 
	{
	
		List ls=this.cityService.search(cityVO);
		return new ModelAndView("admin/viewCity","viewdata",ls);
		
	}
	
	@RequestMapping(value = "editcitypage", method = RequestMethod.GET)
	public ModelAndView citypageopenedit(@ModelAttribute CityVO cityVO,@RequestParam("cityid")int cityid) 
	{
	
		 cityVO.setCityid(cityid);
	 	List str=this.cityService.edit(cityVO);
	 	return new ModelAndView("admin/editCity","x",(CityVO)str.get(0));
		
	}
	
	@RequestMapping(value = "deletecitydata", method = RequestMethod.GET)
	public ModelAndView citydatadelete(@ModelAttribute CityVO cityVO,@RequestParam("cityid")int cityid) 
	{
	
		 cityVO.setCityid(cityid);
		this.cityService.delete(cityVO);
		List ls=this.cityService.search(cityVO);
		return new ModelAndView("admin/viewCity","viewdata",ls);
	 	
		
	}
	

}
