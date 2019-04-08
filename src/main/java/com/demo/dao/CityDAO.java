package com.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.CityVO;

@Repository
public class CityDAO implements CityInterface {
	@Autowired
	private SessionFactory sessionFactory;

	
	public CityVO insert(CityVO cityVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(cityVO);
		return cityVO;
	}


	public List search(CityVO cityVO) {
		
		 List ls=new ArrayList();
		 
		 Session session = this.sessionFactory.getCurrentSession();
		 Query q=session.createQuery("from CityVO where citydeletestatus='active' ");
		 ls=q.list();
		 return ls;
	}

	
	public List edit(CityVO cityVO) {
		
		 List ls=new ArrayList();
		 
		 Session session=sessionFactory.openSession();
		 Query q=session.createQuery("from CityVO where cityid='"+cityVO.getCityid()+"' ");
		 ls=q.list();
		 session.close();
		 return ls;
	}

	
	public CityVO delete(CityVO cityVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("update CityVO set citydeletestatus ='Deactive' where  cityid='"+cityVO.getCityid()+"'");
		q.executeUpdate();
		return cityVO;
	}

}
