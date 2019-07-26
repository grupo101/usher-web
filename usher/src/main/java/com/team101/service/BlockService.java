package com.team101.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team101.dao.BlockDao;
import com.team101.model.Block;

@Service("blockService")
public class BlockService {

	@Autowired
	private BlockDao blockDao;

	public void create(Block block) {
		blockDao.insert(block);
	}

	public void remove(Block block) {
		blockDao.delete(block);
	}

	public void modify(Block block) {
		blockDao.modify(block);
	}

	public List<Block> listAll() {
		return blockDao.getAll();
	}

	public boolean validateField(Block block) {
		return true;
	}

//	public boolean validateEqual(Block block, List<Block> list) {
//		for (Block block2 : list) {
//
//			if (block.getBlockName() == block2.getBlockName()) {
//				return true;
//			}
//		}
//		return false;
//	}

}