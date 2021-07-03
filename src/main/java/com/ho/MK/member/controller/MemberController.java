package com.ho.MK.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ho.MK.member.Member;
import com.ho.MK.member.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@ModelAttribute("cp")
	public String getContextPath(HttpServletRequest request) {
		System.out.println("Test_cp");
		return request.getContextPath();
	}
	
	//Join
	@RequestMapping("/05_Join")
	public String joinForm(@ModelAttribute("mem")Member member, HttpSession session) {
		System.out.println("Test_join");
		return "/05_Join";
	}
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String joinReg(Member member, HttpSession session) {
		System.out.println("Test_joinPro");
		service.memberRegister(member);
		return "/06_JoinPro";
	}
	
	// Login
	@RequestMapping("/07_Login")
	public String loginForm(@ModelAttribute("mem")Member member) {
		return "/07_Login";
	}
	
	@RequestMapping(value ="/login", method = RequestMethod.POST)
	public String memLogin(@ModelAttribute("mem")Member member ,HttpSession session) {
		
		Member mem = service.memberSearch(member);
		if(mem == null) {
			return "/07_Login";
		}
		session.setAttribute("member", mem);
		System.out.println("Login_success");
		return "/08_LoginPro";
	}
	
	//Logout
	@RequestMapping(value="/logout")
	public String memLogout(Member member, HttpSession session) {
		session.invalidate();
		
		return "/09_Logout";
	} 
	
	//Modify
	@RequestMapping(value="/10_Modify")
	public String ModifyForm(@ModelAttribute("mem")Member member, HttpSession session) {
		return "/10_MyInfo";
	}
	
	@RequestMapping(value="/pwcheck")
	public String pwCheck(@ModelAttribute("mem")Member member, HttpSession session) {
		Member mem = service.memberSearch(member);
		if(mem == null) {
			return "/10_MyInfo";
		}
		System.out.println("pwCheck success");
		return "/13_Modify";
	}
	
	@RequestMapping(value="/Modify")
	public String Modify(@ModelAttribute("mem")Member member, HttpSession session) {
		Member mem = service.memberModify(member);
		if(mem == null) {
			return"/10_MyInfo";
		}
		System.out.println("Modify Success");
		return "/01_Main";
	}
	
	//Withdrawal
	@RequestMapping(value="/Withdrawal")
	public String Withdrawal(@ModelAttribute("mem")Member member, HttpSession session) {
		
		return "/14_Withdrawal";
	}

	@RequestMapping(value="/Withdraw")
	public String Withdraw(@ModelAttribute("mem")Member member, HttpSession session) {
		service.memberRemove(member);
		System.out.println("Withdraw Success");
		session.invalidate();
		return "/01_Main";
		
	}
}
