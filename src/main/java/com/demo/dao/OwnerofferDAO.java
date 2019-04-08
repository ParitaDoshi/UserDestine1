package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.ItemVO;
import com.demo.vo.OwnerofferVO;
import com.demo.vo.SubCategoryVO;

@Repository
public class OwnerofferDAO implements OwnerofferInterface {

	@Autowired
	private SessionFactory sessionFactory;

	
	public OwnerofferVO insert(OwnerofferVO ownerofferVO) {

		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(ownerofferVO);
		return ownerofferVO;
	}

	
	public List search(OwnerofferVO ownerofferVO) {
		

		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from OwnerofferVO where offerdeletestatus ='active' ");
		 ls=q.list();
		 return ls;
		
	}


	public List edit(OwnerofferVO ownerofferVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from OwnerofferVO where offerid='"+ownerofferVO.getOfferid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
		
	}

	
	public OwnerofferVO delete(OwnerofferVO ownerofferVO) {
		

		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update OwnerofferVO set offerdeletestatus ='Deactive' where offerid='"+ownerofferVO.getOfferid()+"' ");
		q.executeUpdate();
		return ownerofferVO;
		
	}


	@Override
	public List loaditem(SubCategoryVO subcategoryvo) {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from SubCategoryVO where categoryforeignkeyvo.category_id= '"+subcategoryvo.getCategoryforeignkeyvo().getCategory_id()+"'");	
		System.out.println(q);
		List ls=q.list();
		return ls;
	}
	
	@Override
	public List loaditem1(ItemVO itemvo) {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ItemVO where subcategoryfVO= '"+itemvo.getSubcategoryfVO().getSubcategoryid()+"'");		
		List ls=q.list();
		return ls;
	}
	public List searchitem(OwnerofferVO ownerofferVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from OwnerofferVO where loginfvo='"+ownerofferVO.getLoginfvo().getLoginid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
		
	}


	@Override
	public List searchitemoffer(OwnerofferVO ownerofferVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from OwnerofferVO where registrationfVO='"+ownerofferVO.getRegistrationfVO().getOwnerregistrationid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
	}
}
