package com.team101.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team101.dao.MemberDao;
import com.team101.model.Bench;
import com.team101.model.Member;

@Service("memberService")
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private BenchService benchService;

	public void create(Member member) {
		memberDao.insert(member);
	}

	public void remove(Member member) {
		memberDao.delete(member);
	}

	public void modify(Member member) {
		memberDao.modify(member);
	}

	public List<Member> listAll() {
		return memberDao.getAll();
	}

	public boolean validateField(Member member) {
		return true;
	}

	public Member getMember(Integer idMember) {		
		return (Member) memberDao.getSpecificMember(idMember);
	}

	public List<Member> listAllFreeMembers() {
	
		List<Member> memberList = listAll();
		List<Bench> benchList = benchService.listAll();
		List<Member> memberListToClean = new ArrayList<Member>();
		
		for (Member member : memberList) {
			for (Bench bench : benchList) {
				if(member.getId() == bench.getAssociatedMemberId()){
					memberListToClean.add(member);
				}
			}
		}
		
		memberList.removeAll(memberListToClean);
		return memberList;
	}	

}