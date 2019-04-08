package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.ComplainVO;
@Repository
public class ComplainDAO implements ComplainInterface {
	
	@Autowired
	private SessionFactory sessionFactory;

	
	public ComplainVO insert(ComplainVO complainVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVO);
		return complainVO;
	}

	
	public List search(ComplainVO complainVO) {
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from ComplainVO");
		 ls=q.list();
		 return ls;
	}


	public ComplainVO delete(ComplainVO complainVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update ComplainVO set complaindeletestatus ='Deactive' where complainid='"+complainVO.getComplainid()+"'");
		q.executeUpdate();
		return complainVO;
	}


	@Override
	public void replyComplain(ComplainVO complainVO) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVO);
		
	}


	@Override
	public List loadUserComplainDetails(ComplainVO complainVO) {
		Session session=sessionFactory.getCurrentSession();
		Query q=session.createQuery("from ComplainVO where fromId.loginid="+complainVO.getFromId().getLoginid()+" or toId.loginid="+complainVO.getToId().getLoginid());
		List ls=q.list();
		return ls;
	}


	@Override
	public List loadComplaintRecordList(ComplainVO complainVO) {
		Session session=sessionFactory.getCurrentSession();
		Query q=session.createQuery("from ComplainVO where complainid='"+complainVO.getComplainid()+"'");
		List ls=q.list();
		return ls;
	}


	@Override
	public List allcomplainview(ComplainVO complainVO) {
		String status="Replyed";
		Session session=sessionFactory.getCurrentSession();
		Query q=session.createQuery("from ComplainVO where toId ='"+complainVO.getToId().getLoginid()+"' and complainReplyStatus='"+status+"'");
		List ls=q.list();
		return ls;
	}

}
