package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import com.demo.vo.LoginVO;



@Repository
public class LoginDAO implements LoginInterface {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public LoginVO insert( LoginVO  LoginVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(LoginVO);
		return LoginVO;
	}

	public List searchLoginID(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username='"+loginVO.getUsername()+"'");
		List ls = q.list();
		return ls;
	}
	@Override
	public void updatepassword(LoginVO loginVO) 
	{
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("update LoginVO set password='"+loginVO.getPassword()+"' where username='"+loginVO.getUsername()+"'");
		 q.executeUpdate();
		
	}

	public List searchUser() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where role='ROLE_USER'");
		List ls = q.list();
		return ls;
	}

	public List searchRestaurant()
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where role='ROLE_OWNER'");
		List ls = q.list();
		return ls;
	}

	public List searchOffer()
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from OfferVO");
		List ls = q.list();
		return ls;
	}
	
	public List searchComplain()
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVO");
		List ls = q.list();
		return ls;
	}
	
	public List searchFeedback()
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVO");
		List ls = q.list();
		return ls;
	}
	
	public List searchItem()
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ItemVO");
		List ls = q.list();
		return ls;
	}
}
