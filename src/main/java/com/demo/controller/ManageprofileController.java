package com.demo.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.demo.service.categoryservice;
import com.demo.vo.AreaVO;
import com.demo.vo.CityVO;
import com.demo.vo.LoginVO;

import com.demo.vo.RegistrationVO;
import com.demo.vo.SubCategoryVO;
import com.demo.vo.CategoryVO;






@Controller
public class ManageprofileController {
	
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
	
	
	
	
	
	
	
	
	@RequestMapping(value = "owner/profile", method = RequestMethod.GET)
	public ModelAndView ownereditprofile(@ModelAttribute RegistrationVO registrationVO,CityVO cityVO,CategoryVO categoryvo,SubCategoryVO subCategoryVO,
			 AreaVO areaVO,LoginVO loginVO,HttpSession session)
	{
		List cityls=this.cityService.search(cityVO);
		List areals=this.areaService.search(areaVO);
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subCategoryService.search(subCategoryVO);
		

		int loginId=(Integer) session.getAttribute("loginId");
		loginVO.setLoginid(loginId);
		
		
		System.out.println("loginIDcontroller>>>>>>"+loginId);
		registrationVO.setLoginfvo(loginVO);
	
		
		
		
	
		List str=this.registrationService.editprofile(registrationVO);
		
		
		
	
		System.out.println(str.size());
		
		
		
		
		
	 	return new ModelAndView("owner/manageprofile","x",(RegistrationVO)str.get(0)).addObject("cityls",cityls).
				addObject("areals",areals).addObject("categoryls",categoryls).addObject("subcategoryls",subcategoryls);
		
		
	
	}

	
	
	@RequestMapping(value = "owner/addregisterdataowner", method = RequestMethod.POST)
	public ModelAndView insertownerregisterdata(@ModelAttribute  RegistrationVO registrationVO, LoginVO loginVO ,@RequestParam ("file")MultipartFile shopPhotoFileName,HttpServletRequest request)
	{{
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
		loginVO.setLoginid(registrationVO.getLoginfvo().getLoginid());
		
		loginVO.setRole("ROLE_OWNER");
		loginVO.setEnable(1);
		
		loginService.insert(loginVO);
		
		registrationVO.setLoginfvo(loginVO);
		
		
		registrationVO.setShopdeletestatus("Active");
		
		registrationService.insert(registrationVO);
		
			
		
		return new ModelAndView("owner/manageprofile","x",new RegistrationVO());
		
		
	}
}
	


