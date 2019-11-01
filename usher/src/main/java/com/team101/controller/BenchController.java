package com.team101.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team101.model.Association;
import com.team101.model.Bench;
import com.team101.service.BenchService;

@Controller
public class BenchController {

	@Autowired
	private BenchService benchService;

	@RequestMapping("/bench1")
	public ModelAndView bench1() {
		
		Bench bench = new Bench();

		return new ModelAndView("modifyBench", "benchForm", bench);
	}

	@RequestMapping("/bench2")
	public String bench2(Model model) {	
		Bench bench = new Bench();
		//List<Bench> benchList = benchService.listAll();
		//List<Association> associationList = benchService.listAllFiltered();
		List<Bench> benchList = benchService.listAllBenchToShow();
		model.addAttribute("benchs", benchList);
		model.addAttribute("benchForm", bench);
		
		return "listBench";
	}


	@RequestMapping("/modifyBench")
	@Transactional
	protected String modifyBench(Bench bench, Model model)
			throws ServletException {
		
		benchService.modify(bench);
		return "success";
	}
	
	@RequestMapping("/quorumPanel")
	@Transactional
	protected String canvas(Model model)
			throws ServletException {

		return "quorumPanel";
	}
		
}
