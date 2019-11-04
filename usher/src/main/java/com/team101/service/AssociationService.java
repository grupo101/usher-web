package com.team101.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team101.model.Association;
import com.team101.model.Bench;

@Service("associationService")
public class AssociationService {
	
	@Autowired
	private BenchService benchService;

	public void addMemberToBench(Association association) {		
		
		Bench bench = new Bench();
		bench = benchService.getBench(association.getBench().getNumber());
		bench.setAssociatedMemberId(association.getMember().getId());
		benchService.modify(bench);		
	}

	public void addBlockToBench(Association association) {
		Bench bench = new Bench();
		bench = benchService.getBench(association.getBench().getNumber());
		bench.setAssociatedBlockId(association.getBlock().getId());
		benchService.modify(bench);	
	}

	
	
}
