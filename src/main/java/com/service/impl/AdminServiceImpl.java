package com.service.impl;

import java.util.List;

import com.dao.AdminDao;
import com.domain.Admin;
import com.service.AdminService;

public class AdminServiceImpl implements AdminService{
	private AdminDao adminDao;
	
	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public int addAdmin(Admin admin) {
		return (int) adminDao.save(admin);
	}

	@Override
	public Admin getByName(String name) {
		List<Admin> admins = adminDao.getByName(Admin.class, name);
		if (admins.size()==0) {
			return null;
		}
		return admins.get(0);
	}

	@Override
	public void delAdmin(int id) {
		adminDao.deleteById(Admin.class, id);
	}

	@Override
	public void updateAdmin(Admin admin) {
		adminDao.update(admin);
	}

}
