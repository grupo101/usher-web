package com.team101.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.team101.model.Block;

@Repository("blockDao")
public class BlockDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void insert(Block block) {
		this.sessionFactory.getCurrentSession().save(block);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Block> getAll() {
		return this.sessionFactory.getCurrentSession()
				.createQuery("from Block order by name asc").list();
	}

	@Transactional
	public void delete(Block block) {
		this.sessionFactory.getCurrentSession().delete(block);

	}

	@Transactional
	public void modify(Block block) {
		this.sessionFactory.getCurrentSession().update(block);
	}

}
