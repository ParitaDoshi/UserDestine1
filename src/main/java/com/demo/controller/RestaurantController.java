package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.RegistrationService;

import com.demo.vo.RegistrationVO;


@Controller
public class RestaurantController {
	
		@Autowired
	
	RegistrationService registrationService;
		
	@RequestMapping(value="user/restaurantpage" ,method = RequestMethod.GET)
	public ModelAndView restaurantpageopen(@ModelAttribute  RegistrationVO registrationVO )
	{
		List ls=this.registrationService.search(registrationVO);
		return new ModelAndView("user/restaurant","viewdata1",ls);
	
	}



}
