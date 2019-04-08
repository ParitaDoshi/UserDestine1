package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.ItemVO;
import com.demo.vo.RegistrationVO;
import com.demo.vo.SubCategoryVO;
@Repository
public class ItemDAO implements ItemInterface{
	
	@Autowired
	private SessionFactory sessionFactory;

	
	public ItemVO insert(ItemVO itemVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(itemVO);
		return itemVO;
	}

	
	public List search(ItemVO itemVO) {
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from ItemVO");
		 ls=q.list();
		 return ls;
	}


	public List edit(ItemVO itemVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from ItemVO where itemid='"+itemVO.getItemid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
	}


	public ItemVO delete(ItemVO itemVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update ItemVO set itemdeletestatus ='Deactive' where itemid='"+itemVO.getItemid()+"'");
		q.executeUpdate();
		return itemVO;
	}


	@Override
	public List loaditem(SubCategoryVO subcategoryvo) {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from SubCategoryVO where categoryforeignkeyvo.category_id= '"+subcategoryvo.getCategoryforeignkeyvo().getCategory_id()+"'");		
		List ls=q.list();
		return ls;
	}


	@Override
	public List searchitem(ItemVO itemVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from ItemVO where loginfvo='"+itemVO.getLoginfvo().getLoginid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
	}



	public List itemdata(ItemVO itemVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from ItemVO where registrationfVO='"+itemVO.getRegistrationfVO().getOwnerregistrationid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
	}



	
	

}
