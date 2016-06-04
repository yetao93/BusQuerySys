package com.action;

import java.util.List;
import com.domain.Forum;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ForumService;

public class ForumAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private ForumService forumService;
	private Forum forum;
	private List<Forum> forums;
	private int id;
	
	public String add(){
		forumService.add(forum);
		return SUCCESS;
	}
	
	public String answer(){
		setForum(forumService.getById(id));
		return SUCCESS;
	}
	
	public String del(){
		forumService.delete(forumService.getById(id));
		return SUCCESS;
	}
	
	public String update(){
		forumService.update(forum);
		return SUCCESS;
	}
	
	public String getAll(){
		forums = forumService.getAll();
		return SUCCESS;
	}
	
	public ForumService getForumService() {
		return forumService;
	}
	public void setForumService(ForumService forumService) {
		this.forumService = forumService;
	}
	public Forum getForum() {
		return forum;
	}
	public void setForum(Forum forum) {
		this.forum = forum;
	}

	public List<Forum> getForums() {
		return forums;
	}

	public void setForums(List<Forum> forums) {
		this.forums = forums;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
