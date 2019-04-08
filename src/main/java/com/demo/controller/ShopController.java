package com.demo.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.SystemPropertyUtils;
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
import com.demo.service.categoryservice;
import com.demo.vo.AreaVO;
import com.demo.vo.CityVO;
import com.demo.vo.LoginVO;
import com.demo.vo.RegistrationVO;

import com.demo.vo.SubCategoryVO;
import com.demo.vo.CategoryVO;

@Controller
public class ShopController
{
	
	
	@Autowired
	 categoryservice categoryservice;
	
	@Autowired
	 SubCategoryService subcategoryService;
	
	@Autowired
	 CityService cityService;
	
	@Autowired
	 AreaService areaService;
	
	@Autowired
	
	RegistrationService registrationService;
	
	@Autowired
	LoginService loginService;
	
	
	@RequestMapping(value = "admin/shoppage", method = RequestMethod.GET)
	public ModelAndView shoppageopen(@ModelAttribute  CategoryVO categoryvo ,
			@ModelAttribute SubCategoryVO subcategoryVO,
			@ModelAttribute CityVO cityVO,
			@ModelAttribute AreaVO areaVO) 
	{
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subcategoryService.search(subcategoryVO);
		List cityls=this.cityService.search(cityVO);
		List areals=this. areaService.search(areaVO);
		return new ModelAndView("admin/addShop","x",new RegistrationVO()).addObject("categoryls",categoryls).
				addObject("subcategoryls",subcategoryls).
				addObject("cityls", cityls).
				addObject("areals", areals);
		
		
	}
	
	
	@RequestMapping(value = "admin/addshop", method = RequestMethod.POST)
	
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
		
		
		
		
		return new ModelAndView("admin/addShop","x",new RegistrationVO());
		
	}
	
	
	

	@RequestMapping(value = "admin/viewshoppage", method = RequestMethod.GET)
	public ModelAndView shopviewpage(@ModelAttribute RegistrationVO registrationVO) 
	{
	
		List ls=this.registrationService.search(registrationVO);
		System.out.println(ls.size());
		return new ModelAndView("admin/viewShop","viewdata",ls);
		
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value = "admin/editshoppage", method = RequestMethod.GET)
	public ModelAndView shoppageopenedit(@ModelAttribute RegistrationVO registrationVO,
			@ModelAttribute SubCategoryVO subcategoryVO,
			@ModelAttribute CityVO cityVO,
			@ModelAttribute AreaVO areaVO,
			@ModelAttribute  CategoryVO categoryvo,
			@RequestParam("ownerregistrationid")int ownerregistrationid) 
	{
		
		System.out.println(ownerregistrationid);
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subcategoryService.search(subcategoryVO);
		List cityls=this.cityService.search(cityVO);
		List areals=this. areaService.search(areaVO);
	
		registrationVO.setOwnerregistrationid(ownerregistrationid);
	 	List str=this.registrationService.edit(registrationVO);
	 	return new ModelAndView("admin/editShop","x",(RegistrationVO)str.get(0)).addObject("categoryls",categoryls).
				addObject("subcategoryls",subcategoryls).
				addObject("cityls", cityls).
				addObject("areals", areals);
		
	}
	
	@RequestMapping(value = "admin/deleteshopdata", method = RequestMethod.GET)
	public ModelAndView shopdatadelete(@ModelAttribute RegistrationVO registrationVO,@RequestParam("ownerregistrationid")int ownerregistrationid) 
	{
	
		registrationVO.setOwnerregistrationid(ownerregistrationid);
		this.registrationService.delete(registrationVO);
		List ls=this.registrationService.search(registrationVO);
		return new ModelAndView("admin/viewShop","viewdata",ls);
	 	
		
	}
	

	
	
}
