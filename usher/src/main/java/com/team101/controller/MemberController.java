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
import com.team101.model.Member;
import com.team101.service.BlockService;
import com.team101.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private BlockService blockService;

	@RequestMapping("/member")
	public String member(Model model) {
		
		Member member = new Member();
		List<Block> blockList = blockService.listAll(); 
		model.addAttribute("blocks",blockList);
		model.addAttribute("memberForm", member);
		return "createMember";
	}

	@RequestMapping("/member1")
	public ModelAndView member1() {
		
		Member member = new Member();

		return new ModelAndView("modifyMember", "memberForm", member);
	}

	@RequestMapping("/member2")
	public String member2(Model model) {	
		Member member = new Member();
		List<Member> memberList = memberService.listAll();
		model.addAttribute("members", memberList);
		model.addAttribute("memberForm", member);
		
		return "listMember";
	}

	@RequestMapping("/addMember")
	@Transactional
	protected String addMember(Member member, Model model)
			throws ServletException {

//		List<Member> memberList = memberService.listAll();

//		if (!(memberService.validateField(member))) {
//			return "warning";
//		} else {
//			if (memberService.validateEqual(member, memberList)) {
//				return "duplicado";
//			} else {
				memberService.create(member);
				return "success";
//			}
//		}

	}

	@RequestMapping("/removeMember")
	@Transactional
	protected String removeMember(Member member, Model model)
			throws ServletException {

		memberService.remove(member);
		return "success";
	}

	@RequestMapping("/modifyMember")
	@Transactional
	protected String modifyMember(Member member, Model model)
			throws ServletException {
		
		memberService.modify(member);
		return "success";
	}
	
//	@RequestMapping("/canvas")
//	@Transactional
//	protected String canvas(Model model)
//			throws ServletException {
//		Member member = new Member();
//		List<Member> memberList = memberService.listAll();
//		model.addAttribute("members", memberList);
//		model.addAttribute("memberForm", member);
//		return "quorumPanel";
//	}
	
}