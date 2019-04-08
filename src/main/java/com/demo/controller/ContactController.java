package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value="user/")
@Controller
public class ContactController {
	
	@RequestMapping(value="contactpage" ,method = RequestMethod.GET)
	public ModelAndView contactpageopen()
	{
		
	return new ModelAndView("user/contact");
	
	}

}
