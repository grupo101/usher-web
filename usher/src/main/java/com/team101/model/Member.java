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
	
	@Column(name="url")
	private String memberImage;
	
	@Column(name="active")
	private boolean isActive;

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

	public String getMemberImage() {
		return memberImage;
	}

	public void setMemberImage(String memberImage) {
		this.memberImage = memberImage;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}	
	
	public boolean getIsActive(){
		return isActive;
	}
		
}
