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

import com.demo.service.ItemService;
import com.demo.service.RegistrationService;
import com.demo.service.SubCategoryService;
import com.demo.service.categoryservice;
import com.demo.vo.ItemVO;
import com.demo.vo.LoginVO;
import com.demo.vo.RegistrationVO;
import com.demo.vo.SubCategoryVO;
import com.demo.vo.CategoryVO;

@RequestMapping(value="owner/")
@Controller
public class ItemController {
	
	@Autowired
	 categoryservice categoryservice;
	
	@Autowired
	 ItemService itemService;
	
	@Autowired
	
	RegistrationService registrationService;
	
	
	@Autowired
	 SubCategoryService subcategoryService;
	
	@RequestMapping(value = "itempage", method = RequestMethod.GET)
	public ModelAndView itempageopen(@ModelAttribute  CategoryVO categoryvo, SubCategoryVO subcategoryVO,ItemVO itemVO,RegistrationVO registrationVO) 
	{
		
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subcategoryService.search(subcategoryVO);
	
		
		return new ModelAndView("owner/addItem","x",new ItemVO()).addObject("categoryls",categoryls).
				addObject("subcategoryls",subcategoryls);
						
		
	}
	
	@RequestMapping(value = "additem", method = RequestMethod.POST)
	
	public ModelAndView insertitemdata(@ModelAttribute ItemVO  itemVO,LoginVO loginVO,RegistrationVO registrationVO,HttpSession session ,HttpServletRequest request,@RequestParam ("file")MultipartFile itemPhotoFileName)
	{
		String path = request.getSession().getServletContext().getRealPath("/");
		String itemPhotoFileNameToInsert = itemPhotoFileName.getOriginalFilename();
		String itemPhotoFilePath = path + "item\\"; 
		
		try {
			byte barr[]=itemPhotoFileName.getBytes();  
	
			
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(itemPhotoFilePath+"/"+itemPhotoFileNameToInsert));  
	        
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();
	        
	        itemVO.setItemProfilePhotoName(itemPhotoFileNameToInsert);
		     itemVO.setItemProfilePhotoPath(itemPhotoFilePath);
	    
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		int loginId=(Integer) session.getAttribute("loginId");
		loginVO.setLoginid(loginId);
		
		
		registrationVO.setLoginfvo(loginVO);
		
		List str=this.registrationService.editprofile(registrationVO);
		
		/*System.out.println(str.size());*/
		
		RegistrationVO	registrationVO2=(RegistrationVO)str.get(0);
		
		int rid=registrationVO2.getOwnerregistrationid();
	
		System.out.println("rid>>>>>>"+rid);
		System.out.println("loginIDcontroller>>>>>>"+loginId);
		itemVO.setLoginfvo(loginVO);
		itemVO.setRegistrationfVO(registrationVO2);
		
		
	        
		
		itemVO.setItemdeletestatus("active");
		itemService.insert(itemVO);
		return new ModelAndView("owner/addItem","x",new ItemVO());
		
	}
	
	
	@RequestMapping(value = "viewitempage", method = RequestMethod.GET)
	public ModelAndView itemviewpage(@ModelAttribute ItemVO itemVO,LoginVO loginVO,HttpSession session) 
	{
		int loginId=(Integer) session.getAttribute("loginId");
		loginVO.setLoginid(loginId);
		
		itemVO.setLoginfvo(loginVO);
		
	
		List ls=this.itemService.searchitem(itemVO);
		return new ModelAndView("owner/viewItem","viewdata",ls);
		
	}
	
	
	@RequestMapping(value = "edititempage", method = RequestMethod.GET)
	public ModelAndView itempageopenedit(@ModelAttribute ItemVO itemVO,
			@ModelAttribute SubCategoryVO subcategoryVO,
			@ModelAttribute CategoryVO categoryvo,
		
		
			@RequestParam("itemid")int itemid) 
	{
		
		List categoryls=this.categoryservice.search(categoryvo);
		List subcategoryls=this.subcategoryService.search(subcategoryVO);
		
		
	
		 itemVO.setItemid(itemid);
	 	List str=this.itemService.edit(itemVO);
	 	return new ModelAndView("owner/editItem","x",(ItemVO)str.get(0)).addObject("categoryls",categoryls).
				addObject("subcategoryls",subcategoryls);
				
				
		
	}
	
	
	@RequestMapping(value = "deleteitemdata", method = RequestMethod.GET)
	public ModelAndView itemdatadelete(@ModelAttribute ItemVO itemVO,	@RequestParam("itemid")int itemid)
	{
	
		itemVO.setItemid(itemid);
		this.itemService.delete(itemVO);
		List ls=this.itemService.search(itemVO);
		return new ModelAndView("owner/viewItem","viewdata",ls);
	 	
		
	}
	
	

	@RequestMapping(value = "loadcategorysubcategory", method = RequestMethod.GET)
	public ModelAndView loaddata(@RequestParam("category_id") int i,@ModelAttribute CategoryVO categoryvo, SubCategoryVO subcategoryvo) 
	{
		System.out.println("category"+i);
		categoryvo.setCategory_id(i);
		subcategoryvo.setCategoryforeignkeyvo(categoryvo);
		List lst = itemService.loaditem(subcategoryvo);

		return new ModelAndView("owner/searchCategorySubcategory", "catList", lst);
	}
	
	
	
	@RequestMapping(value = "edititem", method = RequestMethod.POST)
	
	public ModelAndView edititempage(@ModelAttribute ItemVO  itemVO,LoginVO loginVO,HttpSession session ,HttpServletRequest request,@RequestParam ("file")MultipartFile itemPhotoFileName)
	{
		String path = request.getSession().getServletContext().getRealPath("/");
		String itemPhotoFileNameToInsert = itemPhotoFileName.getOriginalFilename();
		String itemPhotoFilePath = path + "item\\"; 
		
		try {
			byte barr[]=itemPhotoFileName.getBytes();  
	
			
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(itemPhotoFilePath+"/"+itemPhotoFileNameToInsert));  
	        
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();
	        
	      
	    
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		  itemVO.setItemProfilePhotoName(itemPhotoFileNameToInsert);
	        itemVO.setItemProfilePhotoPath(itemPhotoFilePath);
	        
		System.out.println("itemvo");
		itemVO.setItemdeletestatus("active");
		itemService.insert(itemVO);
		return new ModelAndView("owner/addItem","x",new ItemVO());
		
	}
	

}
