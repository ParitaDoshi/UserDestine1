package com.demo.controller;



import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.ItemService;
import com.demo.service.OwnerofferService;
import com.demo.service.RegistrationService;

import com.demo.vo.ItemVO;
import com.demo.vo.OwnerofferVO;
import com.demo.vo.RegistrationVO;

import com.demo.vo.SubCategoryVO;
import com.demo.vo.CategoryVO;



@Controller
public class RestaurantDetailController {
	
	@Autowired RegistrationService registrationService;
	
	@Autowired OwnerofferService ownerofferService;
	
	@Autowired ItemService itemService;
	
	
	@RequestMapping(value="user/restaurantdetailswithitem",method=RequestMethod.GET)
	public ModelAndView itemdisplay(@ModelAttribute  RegistrationVO registrationVO ,ItemVO itemVO,OwnerofferVO ownerofferVO,@RequestParam("ownerregistrationid")int i)
		{	
		
		
		
			registrationVO.setOwnerregistrationid(i);
			System.out.println(i);
			
			
			List al=this.registrationService.edit(registrationVO);
			System.out.println("Register List"+al.size());
			
			itemVO.setRegistrationfVO(registrationVO);
			
			List itemlist=itemService.itemdata(itemVO);
			
			System.out.println("item list"+itemlist.size());
		
			return new ModelAndView("user/RestaurantDetailitem","x",al).addObject("itemlist", itemlist);
					
		}
	
	
	
	@RequestMapping(value="user/editrestaurantdetails",method=RequestMethod.GET)
	public ModelAndView editofferpage(@ModelAttribute  RegistrationVO registrationVO ,ItemVO itemVO,OwnerofferVO ownerofferVO,@RequestParam("ownerregistrationid")int i)
		{	
		
		
		
			registrationVO.setOwnerregistrationid(i);
			System.out.println(i);
			
			ownerofferVO.setRegistrationfVO(registrationVO);
		
			List al=this.registrationService.edit(registrationVO);
			System.out.println(al.size());
			
			List il= this. ownerofferService.searchitemoffer(ownerofferVO);	
			System.out.println(il.size());
			return new ModelAndView("user/RestaurantDetail","x",al).addObject("itemList", il);
					
		}
	
	
	
	
	

}
