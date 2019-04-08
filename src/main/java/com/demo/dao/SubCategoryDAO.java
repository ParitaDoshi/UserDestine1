package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.SubCategoryVO;

@Repository
public class SubCategoryDAO implements SubCategoryInterface{
	
	@Autowired
	private SessionFactory sessionFactory;

	
	public SubCategoryVO insert(SubCategoryVO subcategoryVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(subcategoryVO);
		return subcategoryVO;
	}


	public List search(SubCategoryVO subcategoryVO) {
		
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from SubCategoryVO where subcategorydeletestatus = 'active' ");
		 ls=q.list();
		 return ls;
	}


	public List edit(SubCategoryVO subcategoryVO) {
		
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from SubCategoryVO where subcategoryid='"+subcategoryVO.getSubcategoryid()+"' ");
		 ls=q.list();
		session.close();
		return ls;
	}

	
	public SubCategoryVO delete(SubCategoryVO subcategoryVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("update SubCategoryVO set subcategorydeletestatus ='Deactive' where subcategoryid='"+subcategoryVO.getSubcategoryid()+"'");
		q.executeUpdate();
		 return subcategoryVO;
	}


	
	
}
