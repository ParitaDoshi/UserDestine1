package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.categoryservice;
import com.demo.vo.CategoryVO;





//@RequestMapping(value="admin/")
@Controller
public class CategoryController {
	
	@Autowired
	categoryservice cats;
	
	


	@RequestMapping(value = "admin/categorypage", method = RequestMethod.GET)
	public ModelAndView categorypageopen(@ModelAttribute CategoryVO catvo) 
	{
	
		return new ModelAndView("admin/addCategory","x",new CategoryVO());
		
	}
	
	
	
	@RequestMapping(value = "admin/addcategory", method = RequestMethod.GET)
	public ModelAndView insertcategorydata(@ModelAttribute CategoryVO catvo )
	{
		catvo.setCategory_deletestatus("active");
		cats.insert(catvo);
		return new ModelAndView("admin/addCategory","x",new CategoryVO());
		
	}
	
	
	
	@RequestMapping(value = "admin/viewcategorypage", method = RequestMethod.GET)
	public ModelAndView categoryviewpage(@ModelAttribute CategoryVO catvo) 
	{
	
		List ls=this.cats.search(catvo);
		return new ModelAndView("admin/viewCategory","viewdata",ls);
		
	}
	
	@RequestMapping(value = "admin/editcategorypage", method = RequestMethod.GET)
	public ModelAndView categorypageopen(@ModelAttribute CategoryVO catvo,@RequestParam("category_id")int category_id) 
	{
	
		catvo.setCategory_id(category_id);
	 	List str=this.cats.edit(catvo);
	 	return new ModelAndView("admin/editCategory","x",(CategoryVO)str.get(0));
		
	}
	
	@RequestMapping(value = "admin/deletecategorydata", method = RequestMethod.GET)
	public ModelAndView categorydatadelete(@ModelAttribute CategoryVO catvo,@RequestParam("category_id")int category_id) 
	{
	
		catvo.setCategory_id(category_id);
		this.cats.delete(catvo);
		List ls=this.cats.search(catvo);
		return new ModelAndView("admin/viewCategory","viewdata",ls);
	 	
		
	}
	
	
	
	
		
		 
	
	

}
