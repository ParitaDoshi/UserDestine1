package com.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.vo.UserregisterVO;
@Repository
public class UserregisterDAO implements UserregisterInterface {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public UserregisterVO insert(UserregisterVO userregisterVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(userregisterVO);
		return userregisterVO;
	}

}
