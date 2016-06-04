package com.service;

import com.domain.Admin;

public interface AdminService {
	int addAdmin(Admin admin);
	Admin getByName(String name);
	void delAdmin(int id);
	void updateAdmin(Admin admin);
}
