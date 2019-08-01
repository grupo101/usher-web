package com.team101.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team101.dao.MemberDao;
import com.team101.model.Member;

@Service("memberService")
public class MemberService {

	@Autowired
	private MemberDao memberDao;

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

	
//	public boolean validateEqual(Member member, List<Member> list) {
//		for (Member member2 : list) {
//
//			if (member.getMemberName() == member2.getMemberName()) {
//				return true;
//			}
//		}
//		return false;
//	}

}