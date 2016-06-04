package com.domain;

import javax.persistence.*;

@Entity
@Table(name="forum")
public class Forum {
	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String topic;
	private String reply;
	private String date;
	private String author;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	
}
