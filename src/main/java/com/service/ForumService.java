package com.service;

import java.util.List;

import com.domain.Forum;

public interface ForumService {
	int add(Forum forum);
	void update(Forum forum);
	void delete(Forum forum);
	List<Forum> getAll();
	Forum getById(int id);
}
