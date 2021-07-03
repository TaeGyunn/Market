package com.ho.MK.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ho.MK.admin.Admin;
import com.ho.MK.admin.service.AdminService;

@Controller
public class AdminController {
	

	@Autowired
	private AdminService service;

	//Login
	@RequestMapping("/15_AdminLogin")
	public String AdminLoginForm(@ModelAttribute("ad")Admin admin) {
		return "/15_AdminLogin";
	}
	
	@RequestMapping(value="/adminlogin", method = RequestMethod.POST)
	public String admingLogin(@ModelAttribute("ad")Admin admin, HttpSession session) {
		
		Admin ad = service.adminSearch(admin);
		if(ad == null) return "/15_AdminLogin";
		session.setAttribute("admin", ad);
		System.out.println("Login Success");
		
		return "/16_AdminForm";
	}
	
	//Logout
	@RequestMapping(value="/adminLogout")
	public String adminLogout(Admin admin, HttpSession session) {
		session.invalidate();
		
		return"/09_Logout";
	}
}
