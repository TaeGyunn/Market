package com.ho.MK.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ho.MK.admin.Admin;
import com.ho.MK.admin.dao.AdminDao;

@Service
public class AdminService implements IAdminService {
	

	@Autowired
	private AdminDao dao;
	
	@Override
	public Admin adminSearch(Admin admin) {
		
		Admin ad = dao.adminSelect(admin);
		
		if(ad == null) {
			System.out.println("Login Fail");
		}else {
			System.out.println("Admin Login Success");
		}
		
		return admin;
		
	}
}
