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
		
	@RequestMapping("/benchAssociation1")
	public String benchAssociation1(Model model){	
		
		Association association=new Association();		
		List<Member> memberList = memberService.listAll();		
		List<Bench> benchList = benchService.listAll();		
		model.addAttribute("members",memberList);
		model.addAttribute("benchs",benchList);
		model.addAttribute("associationForm",association);
		
		return "createBenchAssociation";
	}
	
	@RequestMapping("/benchAssociation2")
	public String benchAssociation2(Model model){
		
		Association association=new Association();		
		List<Member> memberList = memberService.listAll();	
		model.addAttribute("members",memberList);
		model.addAttribute("associationForm",association);
	
		return "removeBenchAssociation";
	}
	
	@RequestMapping("/addBenchAssociation")
	public String addBenchAssociation(Association association, Model model){
		System.out.println(association.getMember().getId());
		System.out.println(association.getBench().getNumber());
		
		Member member = new Member();
		member = memberService.getMember(association.getMember().getId());
		member.setAssociatedBench(association.getBench().getNumber());
//		member.setAssociatedBlock(association.getBlock().getName());
		memberService.modify(member);
		
		Bench bench = new Bench();
		bench = benchService.getBench(association.getBench().getNumber());
		bench.setId(association.getBench().getNumber());
		bench.setNumber(association.getBench().getNumber());
		bench.setAssociatedMember(member.getName()+" "+member.getSurName());
		bench.setAssociatedBlock(member.getAssociatedBlock());		
		benchService.modify(bench);
		
		return "success";		
	}
	
	@RequestMapping("/removeBenchAssociation")
	public String removeBenchAssociation(Association association, Model model){
		System.out.println(association.getMember().getId());
	
		Member member = new Member();
		member = memberService.getMember(association.getMember().getId());
		
		Bench bench = new Bench();
		bench = benchService.getBench(member.getAssociatedBench());
//		bench.setId(association.getBench().getNumber());
//		bench.setNumber(association.getBench().getNumber());
		bench.setAssociatedMember(null);
		bench.setAssociatedBlock(null);		
		member.setAssociatedBench(null);
//		member.setAssociatedBlock(association.getBlock().getName());
		memberService.modify(member);		
		benchService.modify(bench);		
		return "success";		
	}
	
	
	@RequestMapping("/blockAssociation1")
	public String blockAssociation1(Model model){
		
		Association association=new Association();
		
		List<Member> memberList = memberService.listAll();		
		List<Block> blockList = blockService.listAll();
		List<Bench> benchList = benchService.listAll();
		
		model.addAttribute("members",memberList);
		model.addAttribute("blocks",blockList);
		model.addAttribute("benchs",benchList);
		model.addAttribute("associationForm",association);
//		model.addAttribute("member", new Member());
//		model.addAttribute("bench", new Bench());
//		model.addAttribute("block", new Block());
		
		return "createBlockAssociation";
	}
	
	@RequestMapping("/blockAssociation2")
	public String blockAssociation2(Model model){
		
		Association association=new Association();		
		List<Member> memberList = memberService.listAll();				
		model.addAttribute("members",memberList);
		model.addAttribute("associationForm",association);
		
		return "removeBlockAssociation";
	}
	
	
	
	@RequestMapping("/addBlockAssociation")
	public String addBlockAssociation(Association association, Model model){
		System.out.println(association.getMember().getId());
		
		Member member = new Member();
		member = memberService.getMember(association.getMember().getId());
		member.setAssociatedBlock(association.getBlock().getName());
		memberService.modify(member);
		if(member.getAssociatedBench()!=null){
		Bench bench = new Bench();
		bench = benchService.getBench(member.getAssociatedBench());
		bench.setAssociatedBlock(member.getAssociatedBlock());		
		benchService.modify(bench);
		}
		
		return "success";		
	}
	
	@RequestMapping("/removeBlockAssociation")
	public String removeBlockAssociation(Association association, Model model){
		System.out.println(association.getMember().getId());
		
		Member member = new Member();
		member = memberService.getMember(association.getMember().getId());
		if(member.getAssociatedBench()!=null){
		Bench bench = new Bench();
		bench = benchService.getBench(member.getAssociatedBench());
		bench.setAssociatedBlock(null);			
		benchService.modify(bench);
		};
		member.setAssociatedBlock(null);
		memberService.modify(member);
		return "success";		
	}
	
}
