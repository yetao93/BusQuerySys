package com.action;

import org.apache.struts2.ServletActionContext;

import com.domain.Admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.AdminService;

public class AdminAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private AdminService adminService;
	private Admin admin;
	private String prePage;
	
	public String check(){
		ActionContext ctx = ActionContext.getContext();
		String name = admin.getName();
		Admin administrator = adminService.getByName(name);
		if (administrator!=null) {
			if (admin.getPassword().equals(administrator.getPassword())) {
				ctx.getSession().put("administrator", name);
				prePage = (String) ctx.getSession().get("prePage");
				return SUCCESS;				
			}
		}
		ServletActionContext.getRequest().setAttribute("input", "用户名或密码错误，请重新输入");
		return NONE;
	}
	
	public String logout(){
		ActionContext ctx = ActionContext.getContext();
		ctx.getSession().remove("administrator");
		return SUCCESS;
	}
	
	public String register(){
		adminService.addAdmin(admin);
		return SUCCESS;
	}
	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public String getPrePage() {
		return prePage;
	}

	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}
	
	
}
