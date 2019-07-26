package com.team101.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team101.model.Block;
import com.team101.service.BlockService;

@Controller
public class BlockController {

	@Autowired
	private BlockService blockService;

	@RequestMapping("/block")
	public ModelAndView block() {
		
		Block block = new Block();
		
		return new ModelAndView("createBlock", "blockForm", block);
	}

	@RequestMapping("/block1")
	public ModelAndView block1() {
		
		Block block = new Block();

		return new ModelAndView("modifyBlock", "blockForm", block);
	}

	@RequestMapping("/block2")
	public String block2(Model model) {	
		Block block = new Block();
		List<Block> blockList = blockService.listAll();
		model.addAttribute("blocks", blockList);
		model.addAttribute("blockForm", block);
		
		return "listBlock";
	}

	@RequestMapping("/addBlock")
	@Transactional
	protected String addBlock(Block block, Model model)
			throws ServletException {

//		List<Block> blockList = blockService.listAll();

//		if (!(blockService.validateField(block))) {
//			return "warning";
//		} else {
//			if (blockService.validateEqual(block, blockList)) {
//				return "duplicado";
//			} else {
				blockService.create(block);
				return "success";
//			}
//		}

	}

	@RequestMapping("/removeBlock")
	@Transactional
	protected String removeBlock(Block block, Model model)
			throws ServletException {

		blockService.remove(block);
		return "success";
	}

	@RequestMapping("/modifyBlock")
	@Transactional
	protected String modifyBlock(Block block, Model model)
			throws ServletException {
		
		blockService.modify(block);
		return "success";
	}
	
//	@RequestMapping("/canvas")
//	@Transactional
//	protected String canvas(Model model)
//			throws ServletException {
//		Block block = new Block();
//		List<Block> blockList = blockService.listAll();
//		model.addAttribute("blocks", blockList);
//		model.addAttribute("blockForm", block);
//		return "quorumPanel";
//	}
	
}