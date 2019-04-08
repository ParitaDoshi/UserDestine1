package com.demo.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.AreaService;
import com.demo.service.CityService;
import com.demo.service.LoginService;
import com.demo.service.RegistrationService;

import com.demo.service.SubCategoryService;
import com.demo.service.UserregisterService;
import com.demo.service.categoryservice;
import com.demo.vo.AreaVO;
import com.demo.vo.CityVO;
import com.demo.vo.LoginVO;
import com.demo.vo.RegistrationVO;

import com.demo.vo.SubCategoryVO;
import com.demo.vo.UserregisterVO;
import com.demo.vo.CategoryVO;

@Controller
public class RegistrationController {
	
	
	
	@Autowired
	
	RegistrationService registrationService;
	
	@Autowired
	LoginService loginService;
	
	@Autowired
	 CityService cityService;
	
	@Autowired
	 AreaService areaService;
	
	
	
	@Autowired
	 categoryservice categoryservice;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	UserregisterService userregisterService;
	
	
	@RequestMapping(value = "registrationpage", method = RequestMethod.GET)
	public ModelAndView registerpageopen(@ModelAttribute RegistrationVO registrationVO,
			@ModelAttribute CityVO cityVO,
			@ModelAttribute AreaVO areaVO,
			@ModelAttribute CategoryVO categoryvo,@ModelAttribute SubCategoryVO subCategoryVO) 
	{
		
		List cityls=this.cityService.search(cityVO);
		List areals=this. areaService.search(areaVO);
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subCategoryService.search(subCategoryVO);
		
		
		return new ModelAndView("register","x",new RegistrationVO()).
				addObject("cityls", cityls).
				addObject("areals", areals).
				addObject("subcategoryls", subcategoryls).
				addObject("categoryls", categoryls);
		
		
	}
	
	@RequestMapping(value = "registrationpageuser", method = RequestMethod.GET)
	public ModelAndView registerpageopenuser(@ModelAttribute UserregisterVO userregisterVO,
			@ModelAttribute CityVO cityVO,
			@ModelAttribute AreaVO areaVO)
		
	{
		
		List cityls=this.cityService.search(cityVO);
		List areals=this. areaService.search(areaVO);
	  
		
		
		return new ModelAndView("userregister","x",new UserregisterVO()).
				addObject("cityls", cityls).
				addObject("areals", areals);
			
		
		
	}
	
	@RequestMapping(value = "addregisterdata", method = RequestMethod.POST)
	public ModelAndView insertregisterdata(@ModelAttribute RegistrationVO registrationVO,
			@ModelAttribute LoginVO loginVO,HttpServletRequest request,@RequestParam ("file")MultipartFile shopPhotoFileName)
	{
		{
			String path = request.getSession().getServletContext().getRealPath("/");
			String shopPhotoFileNameToInsert = shopPhotoFileName.getOriginalFilename();
			String shopPhotoFilePath = path + "document\\"; 
			
			try {
				byte barr[]=shopPhotoFileName.getBytes();  
				
		        BufferedOutputStream bout=new BufferedOutputStream(  
		                 new FileOutputStream(shopPhotoFilePath+"/"+shopPhotoFileNameToInsert));  
		        
		        bout.write(barr);  
		        bout.flush();  
		        bout.close();
		        
		        registrationVO.setShopProfilePhotoName(shopPhotoFileNameToInsert);
		        registrationVO.setShopProfilePhotoPath(shopPhotoFilePath);
		        
		    
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		loginVO.setUsername(registrationVO.getLoginfvo().getUsername());
		loginVO.setPassword(registrationVO.getLoginfvo().getPassword());
		loginVO.setRole("ROLE_OWNER");
		loginVO.setEnable(1);
		loginService.insert(loginVO);
		
		registrationVO.setLoginfvo(loginVO);
		registrationVO.setShopdeletestatus("Active");
		
		registrationService.insert(registrationVO);
		
		
		
		
		return new ModelAndView("register","x",new RegistrationVO());
		
	}
	
	@RequestMapping(value = "addregisterdatauser", method = RequestMethod.GET)
	public ModelAndView insertregisterdatauser(@ModelAttribute UserregisterVO userregisterVO,
			@ModelAttribute LoginVO loginVO)
	{
		
		loginVO.setUsername(userregisterVO.getLoginfvo().getUsername());
		loginVO.setPassword(userregisterVO.getLoginfvo().getPassword());
		loginVO.setRole("ROLE_USER");
		loginVO.setEnable(1);
		loginService.insert(loginVO);
		
		userregisterVO.setLoginfvo(loginVO);
		
		
		userregisterService.insert(userregisterVO);
		
		
		
		
		return new ModelAndView("userregister","x",new UserregisterVO());
		
	}
	

}
         