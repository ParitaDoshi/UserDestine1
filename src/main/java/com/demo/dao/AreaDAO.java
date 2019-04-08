package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.AreaVO;

@Repository
public class AreaDAO implements AreaInterface{
	
	@Autowired
	private SessionFactory sessionFactory;

	
	public AreaVO insert(AreaVO areaVO) {
	
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(areaVO);
		return areaVO;
	}

	
	public List search(AreaVO areaVO) {
		
		List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from AreaVO");
		 ls=q.list();
		 return ls;
	}

	
	public List edit(AreaVO areaVO) {
		
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from AreaVO where areaid='"+areaVO.getAreaid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
	}

	
	public AreaVO delete(AreaVO areaVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update AreaVO set areadeletestatus ='Deactive' where  areaid='"+areaVO.getAreaid()+"'");
		q.executeUpdate();
		return areaVO;
	}


	@Override
	public List loadcity(AreaVO areaVO) {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from AreaVO where cityforeignkeyvo.cityid = '"+areaVO.getCityforeignkeyvo().getCityid()+"'");	
		System.out.println(q);
		List ls=q.list();
		return ls;
	}


	@Override
	public List searcharea(AreaVO areaVO) {
		List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from AreaVO where areaid='"+areaVO.getAreaid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
	}
	
	


}
