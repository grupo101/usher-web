package com.team101.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team101.dao.BenchDao;
import com.team101.model.Bench;

@Service("benchService")
public class BenchService {

	@Autowired
	private BenchDao benchDao;

	public void modify(Bench bench) {
		benchDao.modify(bench);
	}

	public List<Bench> listAll() {
		return benchDao.getAll();
	}


}