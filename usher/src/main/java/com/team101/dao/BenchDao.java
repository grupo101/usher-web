package com.team101.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.team101.model.Bench;

@Repository("benchDao")
public class BenchDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Bench> getAll(){
		return this.sessionFactory.getCurrentSession().createQuery("from Bench order by number asc").list();
	}
	
	@Transactional
	public void modify(Bench bench) {
		this.sessionFactory.getCurrentSession().update(bench);		
	}
	
	@Transactional
	public Object getSpecificBench(Integer id){
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Bench where id_bench='"+id+"'");
		return query.list().get(0);		
	}
	
}
