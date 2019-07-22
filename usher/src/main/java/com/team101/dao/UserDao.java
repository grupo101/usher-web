package com.team101.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.team101.model.User;

@Repository("userDao")
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void insert(User user){
		this.sessionFactory.getCurrentSession().save(user);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<User> getAll(){
		return this.sessionFactory.getCurrentSession().createQuery("from User order by name asc").list();
	}
 
	@Transactional
	public void delete(User user) {
		this.sessionFactory.getCurrentSession().delete(user);
		
	}
	
	@Transactional
	public void modify(User user) {
		this.sessionFactory.getCurrentSession().update(user);		
	}
	
}
