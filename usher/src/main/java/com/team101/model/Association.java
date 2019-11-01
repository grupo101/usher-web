package com.team101.model;


public class Association {

	private String associatedBlockName;
	private String associatedMemberName;
	private String associatedMemberSurname;
	private int benchState;
	private int benchManualState;
	
	
	private Bench bench;
	
	private Member member;
	
	private Block block;

	public Association() {
	}

	public Bench getBench() {
		return bench;
	}

	public void setBench(Bench bench) {
		this.bench = bench;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Block getBlock() {
		return block;
	}

	public void setBlock(Block block) {
		this.block = block;
	}

	public String getAssociatedBlockName() {
		return associatedBlockName;
	}

	public void setAssociatedBlockName(String associatedBlockName) {
		this.associatedBlockName = associatedBlockName;
	}

	public String getAssociatedMemberName() {
		return associatedMemberName;
	}

	public void setAssociatedMemberName(String associatedMemberName) {
		this.associatedMemberName = associatedMemberName;
	}

	public String getAssociatedMemberSurname() {
		return associatedMemberSurname;
	}

	public void setAssociatedMemberSurname(String associatedMemberSurname) {
		this.associatedMemberSurname = associatedMemberSurname;
	}

	public int getBenchState() {
		return benchState;
	}

	public void setBenchState(int benchState) {
		this.benchState = benchState;
	}

	public int getBenchManualState() {
		return benchManualState;
	}

	public void setBenchManualState(int benchManualState) {
		this.benchManualState = benchManualState;
	}


	

}
