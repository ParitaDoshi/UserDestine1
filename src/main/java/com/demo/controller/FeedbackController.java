package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.FeedbackService;

import com.demo.vo.FeedbackVO;
import com.demo.vo.LoginVO;


@Controller
public class FeedbackController {
	
	@Autowired
	FeedbackService feedbackService;
	
							/*user code*/
	
	@RequestMapping(value="user/feedbackpage" ,method = RequestMethod.GET)
	public ModelAndView feedbackpageopen(@ModelAttribute FeedbackVO feedbackVO)
	{
		
	return new ModelAndView("user/feedback","x",new FeedbackVO());
	
	}
	
	@RequestMapping(value = "user/addfeedback", method = RequestMethod.GET)
	public ModelAndView insertfeedbackdata(@ModelAttribute FeedbackVO feedbackVO,HttpSession session,HttpServletRequest request)
	{
		int loginId=(Integer) session.getAttribute("loginId");
		LoginVO loginFromVo=new LoginVO();
		loginFromVo.setLoginid(loginId);
		feedbackVO.setFromId(loginFromVo);
		
		
		
		feedbackVO.setFeedbackDate(java.time.LocalDate.now().toString());
		feedbackVO.setFeedbackTime(java.time.LocalTime.now().toString());
		
		feedbackVO.setFeedbackdeletestatus("Active");
		feedbackService.insert(feedbackVO);
		return new ModelAndView("user/feedback","x",new FeedbackVO());
		
	}
	
							/*	user code end*/
	
	
	
							/*owner code */
	
	@RequestMapping(value="owner/feedbackpageowner" ,method = RequestMethod.GET)
	public ModelAndView feedbackpageopenowner(@ModelAttribute FeedbackVO feedbackVO)
	{
		
	return new ModelAndView("owner/addFeedback","x",new FeedbackVO());
	
	}
	
	
	@RequestMapping(value = "owner/addfeedbackowner", method = RequestMethod.GET)
	public ModelAndView insertfeedbackdataowner(@ModelAttribute FeedbackVO feedbackVO,HttpSession session,HttpServletRequest request)
	{
		int loginId=(Integer) session.getAttribute("loginId");
		LoginVO loginFromVo=new LoginVO();
		loginFromVo.setLoginid(loginId);
		feedbackVO.setFromId(loginFromVo);
		
		
		
		
		feedbackVO.setFeedbackDate(java.time.LocalDate.now().toString());
		feedbackVO.setFeedbackTime(java.time.LocalTime.now().toString());
		
		feedbackVO.setFeedbackdeletestatus("Active");
		feedbackService.insert(feedbackVO);
		return new ModelAndView("owner/addFeedback","x",new FeedbackVO());
		
	}
	
	
	
	@RequestMapping(value = "owner/viewfeedbackowner", method = RequestMethod.GET)
	public ModelAndView feedbackownerviewpage(@ModelAttribute FeedbackVO feedbackVO) 
	{
	
		List ls=this.feedbackService.search(feedbackVO);
		return new ModelAndView("owner/viewFeedback","viewdata",ls);
		
	}
	@RequestMapping(value = "owner/deletefeedbackdataowner", method = RequestMethod.GET)
	public ModelAndView itemdatadeleteowner(@ModelAttribute FeedbackVO feedbackVO,	@RequestParam("feedbackid")int feedbackid)
	{
	
		feedbackVO.setFeedbackid(feedbackid);
		this.feedbackService.delete(feedbackVO);
		List ls=this.feedbackService.search(feedbackVO);
		return new ModelAndView("owner/viewFeedback","viewdata",ls);
	 	
		
	}
							/*	owner code end*/
	
	
								/*	admin code*/
	
	@RequestMapping(value = "admin/viewfeedbackadmin", method = RequestMethod.GET)
	public ModelAndView feedbackadminviewpage(@ModelAttribute FeedbackVO feedbackVO) 
	{
	
		List ls=this.feedbackService.search(feedbackVO);
		return new ModelAndView("admin/viewFeedback","viewdata",ls);
		
	}
	
	
	@RequestMapping(value = "admin/deletefeedbackdataadmin", method = RequestMethod.GET)
	public ModelAndView itemdatadeleteadmin(@ModelAttribute FeedbackVO feedbackVO,	@RequestParam("feedbackid")int feedbackid)
	{
	
		feedbackVO.setFeedbackid(feedbackid);
		this.feedbackService.delete(feedbackVO);
		List ls=this.feedbackService.search(feedbackVO);
		return new ModelAndView("admin/viewFeedback","viewdata",ls);
	 	
		
	}
	
						/*admin code emd*/
	
	

}
