package com.team101.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="members")
public class Member {

	@Id
	@GeneratedValue
	@Column(name="id_member")
	private Integer id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="surname")
	private String surName;
	
	@Column(name="assosiated_block")
	private String assosiatedBlock;
	
	@Column(name="assosiated_bench")
	private String associatedBench;

	public Member() {
	};

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurName() {
		return surName;
	}

	public void setSurName(String surName) {
		this.surName = surName;
	}

	public String getAssosiatedBlock() {
		return assosiatedBlock;
	}

	public void setAssosiatedBlock(String assosiatedBlock) {
		this.assosiatedBlock = assosiatedBlock;
	}

	public String getAssociatedBench() {
		return associatedBench;
	}

	public void setAssociatedBench(String associatedBench) {
		this.associatedBench = associatedBench;
	}	

}
