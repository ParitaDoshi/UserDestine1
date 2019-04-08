package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.OfferService;
import com.demo.service.RegistrationService;

import com.demo.service.SubCategoryService;
import com.demo.service.categoryservice;
import com.demo.vo.AreaVO;
import com.demo.vo.CityVO;
import com.demo.vo.OfferVO;
import com.demo.vo.RegistrationVO;

import com.demo.vo.SubCategoryVO;
import com.demo.vo.CategoryVO;
@RequestMapping(value="admin/")
@Controller
public class OfferController {
	
	@Autowired
	OfferService offerService;
	
	@Autowired
	 categoryservice categoryservice;
	
	@Autowired
	 SubCategoryService subcategoryService;
	
	@Autowired
	RegistrationService registrationService;
	
	@RequestMapping(value = "offerpage", method = RequestMethod.GET)
	public ModelAndView offerpageopen(@ModelAttribute  CategoryVO categoryvo ,
			@ModelAttribute SubCategoryVO subcategoryVO,
			@ModelAttribute RegistrationVO registrationVO) 
	{
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subcategoryService.search(subcategoryVO);
		List shopls=this.registrationService.search(registrationVO);
		
		return new ModelAndView("admin/addOffer","x",new OfferVO()).addObject("categoryls",categoryls).
				addObject("subcategoryls",subcategoryls).
				addObject("shopls", shopls);
		
		
	}
	
	@RequestMapping(value = "addoffer", method = RequestMethod.GET)
	public ModelAndView insertofferdata(@ModelAttribute OfferVO offerVO )
	{
		offerVO.setOfferdeletestatus("active");
		offerService.insert(offerVO);
		return new ModelAndView("admin/index","x",new OfferVO());
		
	}
	
	@RequestMapping(value = "viewofferpage", method = RequestMethod.GET)
	public ModelAndView offerviewpage(@ModelAttribute OfferVO offerVO) 
	{
	
		List ls=this.offerService.search(offerVO);
		return new ModelAndView("admin/viewOffer","viewdata",ls);
		
	}
	
	@RequestMapping(value = "editofferpage", method = RequestMethod.GET)
	public ModelAndView offerpageopenedit(@ModelAttribute OfferVO offerVO,
			@ModelAttribute SubCategoryVO subcategoryVO,
			@ModelAttribute CategoryVO categoryvo,
			@ModelAttribute  RegistrationVO registrationVO,
	
			@RequestParam("offerid")int offerid) 
	{
		
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subcategoryService.search(subcategoryVO);
		List shopls=this.registrationService.search(registrationVO);
		
	
		 offerVO.setOfferid(offerid);
	 	List str=this.offerService.edit(offerVO);
	 	return new ModelAndView("admin/editOffer","x",(OfferVO)str.get(0)).addObject("categoryls",categoryls).
				addObject("subcategoryls",subcategoryls).
				
				addObject("shopls", shopls);
		
	}
	
	@RequestMapping(value = "deleteofferdata", method = RequestMethod.GET)
	public ModelAndView shopdatadelete(@ModelAttribute OfferVO offerVO,@RequestParam("offerid")int offerid) 
	{
	
		offerVO.setOfferid(offerid);
		this.offerService.delete(offerVO);
		List ls=this.offerService.search(offerVO);
		return new ModelAndView("admin/viewOffer","viewdata",ls);
	 	
		
	}
	
	
	
	
	
	
	
	
	

}
