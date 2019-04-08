package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class AboutController {
	
	
	
	@RequestMapping(value="user/aboutpage" ,method = RequestMethod.GET)
	public ModelAndView aboutpageopen ()
	{
	
		return new ModelAndView("user/about");
	
	}


}
