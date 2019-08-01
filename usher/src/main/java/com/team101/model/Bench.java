package com.team101.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="benchs")
public class Bench {

	@Id
	@GeneratedValue
	@Column(name="id_bench")
	private Integer id;
	
	@Column(name="number")
	private Integer number;
	
	@Column(name="busyState")
	private boolean busyState;
	
	@Column(name="associated_member")
	private String associatedMember;
	
	@Column(name="associated_block")
	private String associatedBlock;

	public Bench() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public boolean isBusyState() {
		return busyState;
	}

	public void setBusyState(boolean busyState) {
		this.busyState = busyState;
	}

	public String getAssociatedMember() {
		return associatedMember;
	}

	public void setAssociatedMember(String associatedMember) {
		this.associatedMember = associatedMember;
	}

	public String getAssociatedBlock() {
		return associatedBlock;
	}

	public void setAssociatedBlock(String associatedBlock) {
		this.associatedBlock = associatedBlock;
	}

}

