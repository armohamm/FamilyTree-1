package com.ft.entity;

import java.util.List;

public class Flare {
	
	private String name;
	private String id;
	private String size;
	private int username;
	
	public int getUsername() {
		return username;
	}

	public void setUsername(Integer familyid) {
		this.username = familyid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	private List<Flare> children;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public List<Flare> getChildren() {
		return children;
	}
	
	public void setChildren( List<Flare> children) {
		this.children = children;
	}
	
	
}
