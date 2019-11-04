package com.team101.model;



public class Association {
	
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
	
	

}
