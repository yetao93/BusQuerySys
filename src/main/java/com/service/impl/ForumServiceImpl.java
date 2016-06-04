package com.service.impl;

import java.util.List;

import com.dao.ForumDao;
import com.domain.Forum;
import com.service.ForumService;

public class ForumServiceImpl implements ForumService{
	private ForumDao forumDao;
	
	public ForumDao getForumDao() {
		return forumDao;
	}

	public void setForumDao(ForumDao forumDao) {
		this.forumDao = forumDao;
	}

	@Override
	public int add(Forum forum) {
		return (int) forumDao.save(forum);
	}

	@Override
	public void update(Forum forum) {
		forumDao.update(forum);
	}

	@Override
	public void delete(Forum forum) {
		forumDao.delete(forum);
	}

	@Override
	public List<Forum> getAll() {
		return forumDao.findAll(Forum.class);
	}

	@Override
	public Forum getById(int id) {
		return forumDao.getById(Forum.class, id);
	}

}
