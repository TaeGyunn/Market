package com.ho.MK.member.dao;

import com.ho.MK.member.Member;

public interface IMemberDao {
	int memberInsert(Member member);
	Member memberSelect(Member member);
	int memberUpdate(Member member);
	int memberDelete(Member member);
}
