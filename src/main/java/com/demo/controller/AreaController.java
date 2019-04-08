package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.AreaService;
import com.demo.service.CityService;
import com.demo.vo.AreaVO;
import com.demo.vo.CityVO;
@RequestMapping(value="admin/")

@Controller
public class AreaController {
	
	@Autowired
	AreaService areaService;
	
	@Autowired
	CityService cityService;
	
	@RequestMapping(value = "areapage", method = RequestMethod.GET)
	public ModelAndView areapageopen(@ModelAttribute CityVO cityVO) 
	{
		List cityls=this.cityService.search(cityVO);
		return new ModelAndView("admin/addArea","x",new AreaVO()).addObject("cityls",cityls);
		
		
	}
	
	
	@RequestMapping(value = "addarea", method = RequestMethod.GET)
	public ModelAndView insertareadata(@ModelAttribute AreaVO areaVO )
	{
		areaVO.setAreadeletestatus("active");
		areaService.insert(areaVO);
		return new ModelAndView("admin/addArea","x",new AreaVO());
		
	}
	
	
	
	@RequestMapping(value = "viewareapage", method = RequestMethod.GET)
	public ModelAndView areaviewpage(@ModelAttribute AreaVO areaVO) 
	{
	
		List ls=this.areaService.search(areaVO);
		return new ModelAndView("admin/viewArea","viewdata",ls);
		
	}
	
	@RequestMapping(value = "editareapage", method = RequestMethod.GET)
	public ModelAndView areapageopenedit(@ModelAttribute AreaVO areaVO, @ModelAttribute CityVO cityVO,@RequestParam("areaid")int areaid) 
	{
		List cityls=this.cityService.search(cityVO);
		areaVO.setAreaid(areaid);
	 	List str=this.areaService.edit(areaVO);
	 	return new ModelAndView("admin/editArea","x",(AreaVO)str.get(0)).addObject("cityls",cityls);
		
	}
	
	@RequestMapping(value = "deleteareadata", method = RequestMethod.GET)
	public ModelAndView areadatadelete(@ModelAttribute AreaVO areaVO,@RequestParam("areaid")int areaid) 
	{
	
		areaVO.setAreaid(areaid);
		this.areaService.delete(areaVO);
		List ls=this.areaService.search(areaVO);
		return new ModelAndView("admin/viewArea","viewdata",ls);
	 	
		
	}

}
