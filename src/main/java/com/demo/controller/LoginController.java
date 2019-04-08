package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.mail.email;
import com.demo.service.LoginService;
import com.demo.service.RegistrationService;
import com.demo.vo.LoginVO;
import com.demo.vo.RegistrationVO;



@Controller
public class LoginController {
	

	
	@Autowired
	
	LoginService loginService;
	
	RegistrationService registrationService;
	
	
	@RequestMapping(value="/" ,method = RequestMethod.GET)
	public ModelAndView loadcategory()
	{
		
	return new ModelAndView("login");
	
	}

	@RequestMapping(value = "loginpage", method = RequestMethod.GET)
	public ModelAndView loginpageopen(@ModelAttribute LoginVO loginVO)
	{
		return new ModelAndView("login","x",new LoginVO());
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login(LoginVO loginVO)
	{
		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex(LoginVO loginVO,HttpSession session,RegistrationVO registrationVO ) {

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		loginVO.setUsername(userName);
		List ls = this.loginService.searchLoginID(loginVO);
		LoginVO lVO= (LoginVO)ls.get(0);
		int loginId = lVO.getLoginid();
		
		session.setAttribute("loginId",loginId);
		System.out.println("loginID>>>>>>"+loginId);
		List  uls= this.loginService.searchUser();
		session.setAttribute("userList",uls.size());
		
		
		List rls=this.loginService.searchRestaurant();
		session.setAttribute("restaurantList",rls.size());
		
		List ols=this.loginService.searchOffer();
		session.setAttribute("offerList",ols.size());
		
		List cls=this.loginService.searchComplain();
		session.setAttribute("complainList",cls.size());
		
		List fls=this.loginService.searchFeedback();
		session.setAttribute("feedbackList",fls.size());
		
		
		List ils=this.loginService.searchItem();
		session.setAttribute("itemList",ils.size());
		
		
		return new ModelAndView("admin/index");
	}
	
	@RequestMapping(value = "user/index", method = RequestMethod.GET)
	public ModelAndView userIndex( LoginVO loginVO,HttpSession session,RegistrationVO registrationVO ) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		loginVO.setUsername(userName);
		List ls = this.loginService.searchLoginID(loginVO);
		LoginVO lVO= (LoginVO)ls.get(0);
		int loginId = lVO.getLoginid();
		  session.setAttribute("loginId",loginId);
		System.out.println("loginID>>>>>>"+loginId);
		
		
		return new ModelAndView("user/index-3");
	}
	@RequestMapping(value = "owner/index", method = RequestMethod.GET)
	public ModelAndView ownerIndex( LoginVO loginVO,HttpSession session,RegistrationVO registrationVO) {
		
		
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		loginVO.setUsername(userName);
		List ls = this.loginService.searchLoginID(loginVO);
		LoginVO lVO= (LoginVO)ls.get(0);
		int loginId = lVO.getLoginid();
		
		
		System.out.println("loginID>>>>>>"+loginId);
	    session.setAttribute("loginId",loginId);
		return new ModelAndView("owner/index");
		
	
		
		
		
		
	}
	
	@RequestMapping(value="forgotpwd")
	public ModelAndView goToforgotpwdPage()
	{
		return new ModelAndView("forgotPassword","verifyEmailId",new RegistrationVO());
	
	}
	@RequestMapping(value="checkEmailId")
	public ModelAndView checkEmailId(@ModelAttribute RegistrationVO  registervo,LoginVO loginVO,
			HttpServletRequest request,HttpSession session,@RequestParam("emailid")String i)
	{
		System.out.println(i);
		String subject="FORGOT PASSWORD ",content="OTP:";
		loginVO.setUsername(i);
		System.out.println("username"+i);
		session.setAttribute("username", i);
		List ls=loginService.searchLoginID(loginVO);
		System.out.println(ls.size());
		if(ls.size()!=0)
		{
			email e= new email();
			int OTP=e.generateOTP(4);
			session.setAttribute("generatedOTP", OTP);
			System.out.println("OTP>>>>>>"+OTP);
			e.sendMail(i, OTP, subject, content);
			
			return new ModelAndView("otpForForgotPwd");
	
		}
		else
			return new ModelAndView("redirect:/");
	}

	@RequestMapping(value="updatePassword", method = RequestMethod.POST)
public ModelAndView updatePassword(@ModelAttribute LoginVO loginvo,@RequestParam("password")String i,HttpSession session)
{
		
				String username=(String)session.getAttribute("username");
		        loginvo.setPassword(i);
		        loginvo.setUsername(username);
		        String username1 = loginvo.getUsername();
				System.out.println("Username>>>>>>"+username1);
				session.setAttribute("password", username1);
				
		        System.out.println(loginvo.getPassword());
		        System.out.println(loginvo.getUsername());
		        
		    
		        loginvo.setUsername(loginvo.getUsername());
				loginvo.setPassword(loginvo.getPassword());
				this.loginService.updatepassword(loginvo);
		
	         	return new ModelAndView("redirect:/");
}

	@RequestMapping(value="logout", method = {RequestMethod.POST, RequestMethod.GET})
	public String viewUserDetails(ModelMap model,HttpServletResponse response,HttpServletRequest request)
	{
		System.out.println("logout..");
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		if(auth !=null)
		{
			System.out.println("logout....");
			new SecurityContextLogoutHandler().logout(request, response, auth);
			request.getSession().invalidate();
			request.getSession().setAttribute("tempStatus","success");
			request.getSession().setAttribute("statusText","Logout Successfully");
		}
		return "login";
		
	}
	
	@RequestMapping(value="user/about")
	public ModelAndView about()
	{
		return new ModelAndView("user/about");
	}
	
	@RequestMapping(value="user/menu")
	public ModelAndView menu()
	{
		return new ModelAndView("user/menu");
	}
	
	
	
	
	
	
	

}
