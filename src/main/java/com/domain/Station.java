package com.domain;

import javax.persistence.*;

@Entity
@Table(name="station")
public class Station {
	@Id@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int st_id;
	@Column(name="name")
	private String st_name;

	public String getSt_name() {
		return st_name;
	}
	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}
	public int getSt_id() {
		return st_id;
	}
	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}

	
	
}
