package com.ho.MK.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ho.MK.member.Member;
import com.ho.MK.member.dao.MemberDao;

@Service
public class MemberService implements IMemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public void memberRegister(Member member) {
		int result = dao.memberInsert(member);
		
		if(result == 0) {
			System.out.println("Join Fail");
		}else {
			System.out.println("Join Success");
		}
	}

	@Override
	public Member memberSearch(Member member) {
		
		Member mem = dao.memberSelect(member);
		
		if(mem == null) {
			System.out.println("Login Fail");
		}else {
			System.out.println("Login Success");
		}
		
		return mem;
	}

	@Override
	public Member memberModify(Member member) {
		
		int result = dao.memberUpdate(member);
		
		if(result == 0) {
			System.out.println("Modify Fail");
			return null;
		}else {
			System.out.println("Modify Success");
		}
		
		return member;
	}

	@Override
	public int memberRemove(Member member) {
		int result = dao.memberDelete(member);
		
		if(result == 0 ) {
			System.out.println("Remove Fail!!");
		} else {
			System.out.println("Remove Success!!");
		}
		
		return result;
	}
	
}
