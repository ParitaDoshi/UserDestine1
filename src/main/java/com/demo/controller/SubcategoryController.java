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
import com.demo.service.SubCategoryService;

import com.demo.vo.SubCategoryVO;
import com.demo.vo.CategoryVO;

@RequestMapping(value="admin/")
@Controller
public class SubcategoryController {
	
	@Autowired
	SubCategoryService subcategoryservice;
	
	@Autowired
	 categoryservice categoryservice;
	
	
	
	
	@RequestMapping(value = "subcategorypage", method = RequestMethod.GET)
	public ModelAndView subcategorypageopen(@ModelAttribute CategoryVO categoryvo) 
	{
		
		List categoryls=this.categoryservice.search(categoryvo);
		return new ModelAndView("admin/addsubCategory","x",new SubCategoryVO()).addObject("categoryls",categoryls );
		
		
	}
	
	
	@RequestMapping(value = "addsubcategory", method = RequestMethod.GET)
	public ModelAndView insertsubcategorydata(@ModelAttribute SubCategoryVO subcategoryVO )
	{
		subcategoryVO.setSubcategorydeletestatus("active");
		subcategoryservice.insert(subcategoryVO);

		return new ModelAndView("redirect:/admin/subcategorypage");
		
		/*return new ModelAndView("admin/addsubCategory","x",new SubCategoryVO());
		*/
	}
	
	
	
	@RequestMapping(value = "viewsubcategorypage", method = RequestMethod.GET)
	public ModelAndView subcategoryviewpage(@ModelAttribute SubCategoryVO subcategoryVO) 
	{
	
		List ls=this.subcategoryservice.search(subcategoryVO);
		return new ModelAndView("admin/viewsubCategory","viewdata",ls);
		
	}
	
	@RequestMapping(value = "editsubcategorypage", method = RequestMethod.GET)
	public ModelAndView subcategorypageopenedit(@ModelAttribute SubCategoryVO subcategoryVO,
			@ModelAttribute CategoryVO categoryvo,
			@RequestParam("subcategoryid")int subcategoryid) 
	{
		List categoryls=this.categoryservice.search(categoryvo);
		 subcategoryVO.setSubcategoryid(subcategoryid);
	 	List str=this.subcategoryservice.edit( subcategoryVO);
	 	return new ModelAndView("admin/editsubCategory","x",(SubCategoryVO)str.get(0)).addObject("categoryls",categoryls);
		
	}
	
	@RequestMapping(value = "deletesubcategorydata", method = RequestMethod.GET)
	public ModelAndView categorydatadelete(@ModelAttribute SubCategoryVO subcategoryVO,@RequestParam("subcategoryid")int subcategoryid) 
	{
	
		 subcategoryVO.setSubcategoryid(subcategoryid);
		this.subcategoryservice.delete( subcategoryVO);
		List ls=this.subcategoryservice.search( subcategoryVO);
		return new ModelAndView("admin/viewsubCategory","viewdata",ls);
	 	
		
	}
	

}
