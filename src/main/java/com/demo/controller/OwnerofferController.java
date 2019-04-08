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

import com.demo.service.ItemService;
import com.demo.service.OwnerofferService;
import com.demo.service.RegistrationService;
import com.demo.service.SubCategoryService;
import com.demo.service.categoryservice;
import com.demo.vo.ItemVO;
import com.demo.vo.LoginVO;
import com.demo.vo.OwnerofferVO;
import com.demo.vo.RegistrationVO;
import com.demo.vo.SubCategoryVO;
import com.demo.vo.CategoryVO;
@RequestMapping(value="owner/")
@Controller
public class OwnerofferController {
	
	@Autowired
	OwnerofferService ownerofferService;
	
	@Autowired
	 categoryservice categoryservice;
	
	@Autowired
	 SubCategoryService subcategoryService;
	
	@Autowired
	
	RegistrationService registrationService;
	
	@Autowired
	ItemService itemService;
	
	@RequestMapping(value = "offerpage", method = RequestMethod.GET)
	public ModelAndView offerpageopen(@ModelAttribute  CategoryVO categoryvo ,
			@ModelAttribute SubCategoryVO subcategoryVO,@ModelAttribute ItemVO itemVO)
		
	{
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subcategoryService.search(subcategoryVO);
		List itemls=this.itemService.search(itemVO);
		
		
		return new ModelAndView("owner/addOffer","x",new OwnerofferVO()).addObject("categoryls",categoryls).
				addObject("subcategoryls",subcategoryls).addObject("itemls", itemls);
				
		
		
	}
	
	@RequestMapping(value = "addoffer", method = RequestMethod.GET)
	public ModelAndView insertofferdata(@ModelAttribute OwnerofferVO ownerofferVO,LoginVO loginVO,RegistrationVO registrationVO,HttpSession session )
	{
		
		int loginId=(Integer) session.getAttribute("loginId");
		loginVO.setLoginid(loginId);
		
		registrationVO.setLoginfvo(loginVO);
		
		List str=this.registrationService.editprofile(registrationVO);
		
		
		
		RegistrationVO	registrationVO2=(RegistrationVO)str.get(0);
		
		int rid=registrationVO2.getOwnerregistrationid();
	
		System.out.println("rid>>>>>>"+rid);
		
		
		System.out.println("loginIDcontroller>>>>>>"+loginId);
		ownerofferVO.setLoginfvo(loginVO);
		ownerofferVO.setRegistrationfVO(registrationVO2);
		
		
		ownerofferVO.setOfferdeletestatus("active");
		ownerofferService.insert(ownerofferVO);
		return new ModelAndView("owner/addOffer","x",new OwnerofferVO());
		
	}
	
	@RequestMapping(value = "viewofferpage", method = RequestMethod.GET)
	public ModelAndView offerviewpage(@ModelAttribute OwnerofferVO ownerofferVO,LoginVO loginVO,HttpSession session) 
	{
		int loginId=(Integer) session.getAttribute("loginId");
		loginVO.setLoginid(loginId);
		
		ownerofferVO.setLoginfvo(loginVO);
	
		List ls=this.ownerofferService.searchitem(ownerofferVO);
		return new ModelAndView("owner/viewOffer","viewdata",ls);
		
	}
	
	@RequestMapping(value = "editofferpage", method = RequestMethod.GET)
	public ModelAndView offerpageopenedit(@ModelAttribute OwnerofferVO ownerofferVO,
			@ModelAttribute SubCategoryVO subcategoryVO,
			@ModelAttribute CategoryVO categoryvo,
		
		
			@RequestParam("offerid")int offerid) 
	{
		
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subcategoryService.search(subcategoryVO);
		
		
	
		ownerofferVO.setOfferid(offerid);
	 	List str=this.ownerofferService.edit(ownerofferVO);
	 	return new ModelAndView("owner/editOffer","x",(OwnerofferVO)str.get(0)).addObject("categoryls",categoryls).
				addObject("subcategoryls",subcategoryls);
				
				
		
	}
	
	@RequestMapping(value = "deleteofferdata", method = RequestMethod.GET)
	public ModelAndView shopdatadelete(@ModelAttribute OwnerofferVO ownerofferVO,@RequestParam("offerid")int offerid) 
	{
	
		ownerofferVO.setOfferid(offerid);
		this.ownerofferService.delete(ownerofferVO);
		List ls=this.ownerofferService.search(ownerofferVO);
		return new ModelAndView("owner/viewOffer","viewdata",ls);
	 	
		
	}
	
	
	@RequestMapping(value = "loadcategory", method = RequestMethod.GET)
	public ModelAndView loaddata(@RequestParam("category_id") int i,@ModelAttribute CategoryVO categoryvo,
			@ModelAttribute SubCategoryVO subcategoryvo) 
	{
		System.out.println("categoryid"+i);
		categoryvo.setCategory_id(i);
		subcategoryvo.setCategoryforeignkeyvo(categoryvo);
		List lst = ownerofferService.loaditem(subcategoryvo);

		return new ModelAndView("owner/searchCategorySubcategory", "catList", lst);
	}

	@RequestMapping(value = "loadsubcategory", method = RequestMethod.GET)
	public ModelAndView loaddata1(@RequestParam("subcategoryid") int i, @ModelAttribute CategoryVO categoryvo,
			@ModelAttribute SubCategoryVO subcategoryvo, @ModelAttribute ItemVO itemvo) {

		subcategoryvo.setSubcategoryid(i);
		itemvo.setSubcategoryfVO(subcategoryvo);
		List lst = ownerofferService.loaditem1(itemvo);

		return new ModelAndView("owner/searchSubcategoryitem", "subcatList", lst);
	}

	@RequestMapping(value = "loaditemprice", method = RequestMethod.GET)
	public ModelAndView loaddata2(@RequestParam("itemid") int i, @ModelAttribute ItemVO itemvo) {

		itemvo.setItemid(i);
		List al = this.itemService.edit(itemvo);

		return new ModelAndView("owner/searchitemprice", "itemList", al);
	}
	
	
	
	
	
	
	
	
	

}
