package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.FeedbackVO;
@Repository
public class FeedbackDAO implements FeedbackInterface {
	
	@Autowired
	private SessionFactory sessionFactory;


	public FeedbackVO insert(FeedbackVO feedbackVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(feedbackVO);
		return feedbackVO;
	}


	public List search(FeedbackVO feedbackVO) {
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from FeedbackVO");
		 ls=q.list();
		 return ls;
		
	}



	public FeedbackVO delete(FeedbackVO feedbackVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update FeedbackVO set feedbackdeletestatus ='Deactive' where feedbackid='"+feedbackVO.getFeedbackid()+"'");
		q.executeUpdate();
		return feedbackVO;
	}


	@Override
	public List loadfeedbackRecordList(FeedbackVO feedbackVO) {
		Session session=sessionFactory.getCurrentSession();
		Query q=session.createQuery("from FeedbackVO where feedbackid='"+feedbackVO.getFeedbackid()+"'");
		List ls=q.list();
		return ls;
	}


}
