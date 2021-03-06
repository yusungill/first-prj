package com.proj.trelloproj.web.entity;

import java.util.Date;

public class Board {
	
	
	private int id;
	private int teamId;
	private String name;
	private Date regDate;
	private int createrId;
	
	public Board() {

	}

	public Board(int id, int teamId, String name, Date regDate, int createrId) {
		super();
		this.id = id;
		this.teamId = teamId;
		this.name = name;
		this.regDate = regDate;
		this.createrId = createrId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getCreaterId() {
		return createrId;
	}

	public void setCreaterId(int createrId) {
		this.createrId = createrId;
	}

	@Override
	public String toString() {
		return "Board [id=" + id + ", teamId=" + teamId + ", name=" + name + ", regDate=" + regDate + ", createrId="
				+ createrId + "]";
	}

	
}
