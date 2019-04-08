package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.CategoryVO;






@Repository
public class CategoryDAO implements CategoryInterface{

	@Autowired
	private SessionFactory sessionFactory;

	public CategoryVO insert(CategoryVO catvo) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(catvo);
		return catvo;
	}


	public List search(CategoryVO catvo) {
		
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from CategoryVO");
		 ls=q.list();
		 return ls;
	}



	public List edit(CategoryVO catvo) {
		
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from CategoryVO where categoryid='"+catvo.getCategory_id()+"' ");
		 ls=q.list();
		session.close();
		return ls;
	}



	public CategoryVO delete(CategoryVO catvo) {
		Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("update CategoryVO set category_deletestatus ='Deactive' where categoryid='"+catvo.getCategory_id()+"'");
		q.executeUpdate();
		 return catvo;
	
	}


}