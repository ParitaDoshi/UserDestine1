package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.OfferVO;

@Repository
public class OfferDAO implements OfferInterface{
	
	@Autowired
	private SessionFactory sessionFactory;


	public OfferVO insert(OfferVO offerVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(offerVO);
		return offerVO;
	}


	public List search(OfferVO offerVO) {
	
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from OfferVO");
		 ls=q.list();
		 return ls;
	}


	public List edit(OfferVO offerVO) {
		
		 List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from OfferVO where offerid='"+offerVO.getOfferid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
	
	}


	public OfferVO delete(OfferVO offerVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update OfferVO set offerdeletestatus ='Deactive' where  offerid='"+offerVO.getOfferid()+"'");
		q.executeUpdate();
		return offerVO;
	}

}
