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
import com.demo.service.RegistrationService;
import com.demo.vo.AreaVO;
import com.demo.vo.CityVO;
import com.demo.vo.RegistrationVO;


@RequestMapping(value="user/")
@Controller
public class UserofferController {
	
	@Autowired
	 CityService cityService;
	
	@Autowired
	 AreaService areaService;
	
	@Autowired
	
RegistrationService registrationService;
	
	@RequestMapping(value="userofferypage" ,method = RequestMethod.GET)
	public ModelAndView offerpageopen(@ModelAttribute CityVO cityVO, AreaVO areaVO)
	{
		
		
		List cityls=this.cityService.search(cityVO);
		List areals=this. areaService.search(areaVO);
		
		return new ModelAndView("user/offer","x",new AreaVO()).addObject("cityls", cityls).
				addObject("areals", areals);
	
	}
	
	
	@RequestMapping(value="loadAreaByCity" ,method = RequestMethod.GET)
	public ModelAndView city(@RequestParam("cityId") int cityId,@ModelAttribute CityVO cityVO, AreaVO areaVO)
	{
		
		cityVO.setCityid(cityId);
		areaVO.setCityforeignkeyvo(cityVO);
		
		List areaList=areaService.loadcity(areaVO);
		
		System.out.println(areaList.size());
		
		return new ModelAndView("user/areaJson","areaList",areaList);
	
	}
	
	@RequestMapping(value="showlocation" ,method = RequestMethod.GET)
	public ModelAndView location(@RequestParam("areaid") int i,@ModelAttribute CityVO cityVO, AreaVO areaVO,RegistrationVO registrationVO)
	{
		
		
		areaVO.setAreaid(i);
		registrationVO.setAreafVO(areaVO);
		System.out.println(i);
		List areaList=areaService.searcharea(areaVO);
	

		List ls=this.registrationService.searchByArea(registrationVO);
		
	
		
		
		System.out.println("area list"+areaList.size());
		System.out.println("register list"+ls.size());
		return new ModelAndView("user/test","areaList",areaList).addObject("viewdata",ls);
	
	}
	
	
	
	
	
	
	
	
	
	

}
	
	


