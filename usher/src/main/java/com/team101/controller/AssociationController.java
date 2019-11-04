package com.team101.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team101.model.Association;
import com.team101.model.Bench;
import com.team101.model.Block;
import com.team101.model.Member;
import com.team101.service.AssociationService;
import com.team101.service.BenchService;
import com.team101.service.BlockService;
import com.team101.service.MemberService;

@Controller
public class AssociationController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private BenchService benchService;
	@Autowired
	private BlockService blockService;
	
	@Autowired
	private AssociationService associationService;
		
	@RequestMapping("/benchAssociation1")
	public String benchAssociation1(Model model){	
		
		Association association = new Association();
		
		List<Member> memberList = memberService.listAllFreeMembers();		
		List<Bench> benchList = benchService.listAllUnlockedBenchs();		
		model.addAttribute("members",memberList);
		model.addAttribute("benchs",benchList);
		model.addAttribute("associationForm",association);		
		return "createBenchAssociation";
	}
	
	@RequestMapping("/benchAssociation2")
	public String benchAssociation2(Model model){
		
		Association association= new Association();		
		List<Bench> benchList = benchService.listAllLockedBenchs();	
		model.addAttribute("benchs",benchList);
		model.addAttribute("associationForm",association);	
		return "removeBenchAssociation";
	}
	
	@RequestMapping("/addBenchAssociation")
	public String addBenchAssociation(Association association, Model model){

		associationService.addMemberToBench(association);
		
		return "success";		
	}
	
	@RequestMapping("/removeBenchAssociation")
	public String removeBenchAssociation(Association association, Model model){	
		Bench bench = new Bench();
		bench = benchService.getBench(association.getBench().getNumber());
		bench.setAssociatedMemberId(null);
//		bench.setAssociatedBlock(null);			
		benchService.modify(bench);		
		return "success";		
	}
	
	
	@RequestMapping("/blockAssociation1")
	public String blockAssociation1(Model model){			
		
		Association association = new Association();		
		List<Block> blockList = blockService.listAll();		
		List<Bench> benchList = benchService.listAllUnlockedBlockBenchs();		
		model.addAttribute("blocks",blockList);
		model.addAttribute("benchs",benchList);
		model.addAttribute("associationForm",association);	
		return "createBlockAssociation";
	}
	
	@RequestMapping("/blockAssociation2")
	public String blockAssociation2(Model model){
		
		Association association=new Association();		
		List<Bench> benchList = benchService.listAllLockedBlockBenchs();				
		model.addAttribute("benchs",benchList);
		model.addAttribute("associationForm",association);	
		return "removeBlockAssociation";
	}
	
	@RequestMapping("/addBlockAssociation")
	public String addBlockAssociation(Association association, Model model){		
		
		associationService.addBlockToBench(association);		
		return "success";		
	}
	
	@RequestMapping("/removeBlockAssociation")
	public String removeBlockAssociation(Association association, Model model){			

		Bench bench = new Bench();
		bench = benchService.getBench(association.getBench().getNumber());
		bench.setAssociatedBlockId(null); 			
		benchService.modify(bench);
		return "success";		
	}
	
}
