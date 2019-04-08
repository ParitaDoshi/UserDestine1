package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.AreaVO;
import com.demo.vo.ItemVO;
import com.demo.vo.LoginVO;
import com.demo.vo.RegistrationVO;



@Repository
public class RegistrationDAO implements RegistrationInterface{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public RegistrationVO insert(RegistrationVO registrationVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registrationVO);
		return registrationVO;
	}

	
	
	
	@Override
	public List edit(RegistrationVO registrationVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from RegistrationVO where ownerregistrationid='"+registrationVO.getOwnerregistrationid()+"' ");
		/* Query q=session.createQuery("from RegistrationVO where loginfVO_loginid='"+registrationVO.getLoginfvo().getLoginid()+"' ");*/
		 ls=q.list();
		 session.close();
		 return ls;
	}

	@Override
	public List editprofile(RegistrationVO registrationVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		
		 Query q=session.createQuery("from RegistrationVO where loginfvo='"+registrationVO.getLoginfvo().getLoginid()+"' ");
		 ls=q.list();
		 System.out.println(ls.size());
		 session.close();
		 return ls;
	}




	@Override
	public List search(RegistrationVO registrationVO) {
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from RegistrationVO");
		 ls=q.list();
		 return ls;
	}




	@Override
	public RegistrationVO delete(RegistrationVO registrationVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update RegistrationVO set shopdeletestatus ='Deactive' where ownerregistrationid='"+registrationVO.getOwnerregistrationid()+"'");
		q.executeUpdate();
		return registrationVO;
	}




	@Override
	public List searchitem(ItemVO itemVO) {
		
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from ItemVO where registrationfVO='"+itemVO.getRegistrationfVO().getOwnerregistrationid()+"'");
		 ls=q.list();
		 return ls;
		
	}




	public List searchByArea(RegistrationVO registrationVO) {
		// TODO Auto-generated method stub
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from RegistrationVO where areafVO='"+registrationVO.getAreafVO().getAreaid()+"'");
		 ls=q.list();
		 return ls;
	}




	


}
