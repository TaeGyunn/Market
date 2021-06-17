package com.ho.MK.Naver;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NaverService {
		
		@Autowired
		NaverDao dao;
		
		public void NaverRegister(NaverMember Nmember) {
			
			int result = dao.NmemberInsert(Nmember);
			
			if(result == 0) {
				System.out.println("Join Fail");
			}else {
				System.out.println("Join Success");
			}
		}
		
		public NaverMember NmemberSearch(NaverMember Nmember) {
			
			NaverMember mem = dao.NmemberSelect(Nmember);
			
			if(mem == null) {
				System.out.println("Login Fail");
			}else {
				System.out.println("Login Success");
			}
			
			return mem;
		}
}
