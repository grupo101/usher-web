package com.team101.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team101.dao.BenchDao;
import com.team101.model.Bench;
import com.team101.model.Block;
import com.team101.model.Member;

@Service("benchService")
public class BenchService {

	@Autowired
	private BenchDao benchDao;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BlockService blockService;

	public void modify(Bench bench) {
		benchDao.modify(bench);
	}

	public List<Bench> listAll() {
		return benchDao.getAll();
	}	
	
	
	public Bench getBench(Integer idBench) {		
		return (Bench) benchDao.getSpecificBench(idBench);
	}
	
	public List<Bench> listAllBenchToShow(){
		
		List<Bench> benchList = benchDao.getAll();
		List<Member> memberList = memberService.listAll();
		List<Block> blockList = blockService.listAll();
		
		for (Bench bench : benchList) {
			for(Member member : memberList){
				if(bench.getAssociatedMemberId() == member.getId()){
					bench.setAssociatedMember(member.getName() +" "+ member.getSurName());
				}
			}
			for(Block block : blockList){
				if(bench.getAssociatedBlockId() == block.getId()){
					bench.setAssociatedBlock(block.getName());
				}			
			}
		}		
		return benchList;
	}

	public List<Bench> listAllUnlockedBenchs() {
		return benchDao.listAllFreeBenchs();
	}

	public List<Bench> listAllLockedBenchs() {
		
		List<Bench> benchList = benchDao.listAllAssignedBenchs();		
		List<Member> memberList = memberService.listAll();
		List<Block> blockList = blockService.listAll();
		
		for (Bench bench : benchList) {
			for(Member member : memberList){
				if(bench.getAssociatedMemberId() == member.getId()){
					bench.setAssociatedMember(member.getName() +" "+ member.getSurName());
				}
			}
			for(Block block : blockList){
				if(bench.getAssociatedBlockId() == block.getId()){
					bench.setAssociatedBlock(block.getName());
				}			
			}
		}
		
		return benchList;
	}

	public List<Bench> listAllUnlockedBlockBenchs() {
		
		List<Bench> benchList = benchDao.listAllFreeBlockBenchs();
		List<Member> memberList = memberService.listAll();
		
		for (Bench bench : benchList) {
			for(Member member : memberList){
				if(bench.getAssociatedMemberId() == member.getId()){
					bench.setAssociatedMember(member.getName() +" "+ member.getSurName());
				}
			}
//			for(Block block : blockList){
//				if(bench.getAssociatedBlockId() == block.getId()){
//					bench.setAssociatedBlock(block.getName());
//				}			
//			}
		}
		return benchList;
	}

}