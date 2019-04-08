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

import com.demo.service.ComplainService;
import com.demo.vo.ComplainVO;
import com.demo.vo.LoginVO;



@Controller
public class ComplainController {
	
	@Autowired
	ComplainService complainService;
	
	
									/*user code*/
	
	@RequestMapping(value="user/complainpage" ,method = RequestMethod.GET)
	public ModelAndView complainpageopen(ComplainVO complainVO )
	{
		
	return new ModelAndView("user/complain","x",new ComplainVO());
	
	}
	
	
	@RequestMapping(value = "user/addcomplain", method = RequestMethod.GET)
	public ModelAndView insertcomplaindata(@ModelAttribute ComplainVO complainVO ,HttpSession session,HttpServletRequest request)
	{
		complainVO.setComplainReplyStatus("pending");
		
		int loginId=(Integer) session.getAttribute("loginId");
		LoginVO loginFromVo=new LoginVO();
		loginFromVo.setLoginid(loginId);
		complainVO.setFromId(loginFromVo);
		
		LoginVO logintoVo=new LoginVO();
		logintoVo.setLoginid(1);
		complainVO.setToId(logintoVo);
		
		
		complainVO.setComplainDate(java.time.LocalDate.now().toString());
		complainVO.setComplainTime(java.time.LocalTime.now().toString());
		
	
		complainService.insert(complainVO);

		return new ModelAndView("user/complain","x",new ComplainVO());

	}
	
	
	@RequestMapping(value = "user/viewcomplain", method = RequestMethod.GET)
	public ModelAndView complainviewpage(@ModelAttribute ComplainVO complainVO,HttpSession session) 
	{
	
		int loginId = (Integer)session.getAttribute("loginId");
		
		LoginVO loginVo = new LoginVO();
		loginVo.setLoginid(loginId);
		
		complainVO.setToId(loginVo);
		List ls= this.complainService.allcomplainview(complainVO);
	
		return new ModelAndView("user/ViewComplain","viewdata",ls);
		
	}
	
	
	
				/*user code end*/
	
	
	
	
	
	
						/*owner code*/
	
	
	@RequestMapping(value = "owner/deletecomplaindata", method = RequestMethod.GET)
	public ModelAndView itemdatadelete(@ModelAttribute ComplainVO complainVO,	@RequestParam("complainid")int complainid)
	{
	
		complainVO.setComplainid(complainid);
		this.complainService.delete(complainVO);
		List ls=this.complainService.search(complainVO);
		return new ModelAndView("owner/viewComplain","viewdata",ls);
	 	
		
	}
	
	
	@RequestMapping(value="owner/ownercomplainpage" ,method = RequestMethod.GET)
	public ModelAndView complaiownernpageopen(@ModelAttribute ComplainVO complainVO )
	{
		
	return new ModelAndView("owner/addComplain","x",new ComplainVO());
	
	}
	
	@RequestMapping(value = "owner/addcomplainowner", method = RequestMethod.GET)
	public ModelAndView insertcomplainownerdata(@ModelAttribute ComplainVO complainVO,HttpSession session,HttpServletRequest request )
	{
		complainVO.setComplainReplyStatus("pending");
		int loginId=(Integer) session.getAttribute("loginId");
		LoginVO loginFromVo=new LoginVO();
		loginFromVo.setLoginid(loginId);
		complainVO.setFromId(loginFromVo);
		
		LoginVO logintoVo=new LoginVO();
		logintoVo.setLoginid(1);
		complainVO.setToId(logintoVo);
		
		
		complainVO.setComplainDate(java.time.LocalDate.now().toString());
		complainVO.setComplainTime(java.time.LocalTime.now().toString());
		
		complainService.insert(complainVO);
	
		return new ModelAndView("redirect:/owner/ownercomplainpage");
	/*	return new ModelAndView("owner/addComplain","x",new ComplainVO());*/
		
	}
	
	@RequestMapping(value = "owner/viewownercomplainpage", method = RequestMethod.GET)
	public ModelAndView complainviewownerpage(@ModelAttribute ComplainVO complainVO,HttpSession session) 
	{
	
		int loginId=(Integer)session.getAttribute("loginId");
		LoginVO loginVo=new LoginVO();
		loginVo.setLoginid(loginId);
		
		complainVO.setToId(loginVo);
		List ls= this.complainService.allcomplainview(complainVO);
		return new ModelAndView("owner/viewComplain","viewdata",ls);
		
	}
	
	@RequestMapping(value="owner/viewownercomplainrecordpage",method= RequestMethod.GET)
	public ModelAndView viewComplainRecordPage(@RequestParam("complainid")int complainid,
			ComplainVO complainVO,HttpSession session,LoginVO loginVO)
	{
		
		complainVO.setComplainid(complainid);
		List complainRecordList=complainService.loadComplainRecordList(complainVO);
		System.out.println(complainRecordList.size());
		return new ModelAndView("owner/viewOwnerComplainRecordPage","complainRecordList",(ComplainVO)complainRecordList.get(0));
	}
	
							/*	owner code end*/
	
								
					
	
	
	
	
									/*Admin code*/
	
	
	
	@RequestMapping(value = "admin/viewadmincomplainpage", method = RequestMethod.GET)
	public ModelAndView complainviewadminpage(@ModelAttribute ComplainVO complainVO) 
	{
	
		List ls=this.complainService.search(complainVO);
		return new ModelAndView("admin/viewComplain","viewdata",ls);
		
	}
	
	@RequestMapping(value="admin/viewcomplainrecordpage",method= RequestMethod.GET)
	public ModelAndView viewComplaintRecordPage(@RequestParam("complainid")int complainid,
			ComplainVO complainVO,HttpSession session,LoginVO loginVO)
	{
		
		complainVO.setComplainid(complainid);
		List complainRecordList=complainService.loadComplainRecordList(complainVO);
		System.out.println(complainRecordList.size());
		return new ModelAndView("admin/viewComplainRecordPage","complainRecordList",(ComplainVO)complainRecordList.get(0));
	}
	
	@RequestMapping(value="admin/replycomplain",method= RequestMethod.POST)
	public ModelAndView replycomplaint(@RequestParam("complainid") int i,@ModelAttribute ComplainVO complainVO,HttpSession session)
	{
		
		LoginVO loginfromvo =new LoginVO();
		LoginVO logintovo =new LoginVO(); 
		complainVO.setComplainDate(java.time.LocalDate.now().toString());
		complainVO.setComplainTime(java.time.LocalTime.now().toString());
		complainVO.setComplainReplyStatus("Replyed");
		complainVO.setComplainid(i);
		complainVO.setReplyComplainDescription(complainVO.getReplyComplainDescription());
		
		logintovo.setLoginid(complainVO.getFromId().getLoginid());
		complainVO.setToId(logintovo);

		int loginId=(Integer)session.getAttribute("loginId");
		loginfromvo.setLoginid(loginId);
		complainVO.setFromId(loginfromvo);
		
		
		complainService.replyComplain(complainVO);
		return new ModelAndView("admin/viewComplainRecordPage","complainRecordList",new ComplainVO());
	}
	
									/*	ADMIN END	*/
	

}
