package com.ho.MK.member.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ho.MK.member.Member;
import com.mchange.v2.c3p0.ComboPooledDataSource;

@Repository
public class MemberDao implements IMemberDao{
	
	private JdbcTemplate template;
	
	@Autowired
	public MemberDao(ComboPooledDataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int memberInsert(final Member member) {
		
		int result =  0;
		
		final String sql = "INSERT INTO member (memId, memPw, memName, memEmail, memNumber) values (?,?,?,?,?)";
	
		result = template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, member.getMemId());
				ps.setString(2, member.getMemPw());
				ps.setString(3, member.getMemName());
				ps.setString(4, member.getMemEmail());
				ps.setString(5, member.getMemNumber());
		
			}
			
		});
		return result;
	}

	@Override
	public Member memberSelect(Member member) {
		
		List<Member> members = null;
		
		final String sql = "SELECT * FROM member WHERE memId = ? AND memPw = ?";
		members = template.query(sql, new Object[] {member.getMemId(), member.getMemPw()}, new RowMapper<Member>() {

			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member mem = new Member();
				mem.setMemId(rs.getString("memId"));
				mem.setMemPw(rs.getString("memPw"));
				mem.setMemName(rs.getString("memName"));
				mem.setMemEmail(rs.getString("memEmail"));
				mem.setMemNumber(rs.getString("memNumber"));
				return mem;
			}
			
		});
		if(members.isEmpty())
		return null;
		
		return members.get(0);
	}

	@Override
	public int memberUpdate(final Member member) {
		
		int result = 0;
		
		final String sql = "UPDATE member SET memPw = ?, memEmail = ? ,memNumber = ?, memName =?  WHERE memId = ?";
		result = template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, member.getMemPw());
				ps.setString(2, member.getMemEmail());
				ps.setString(3, member.getMemNumber());
				ps.setString(4, member.getMemName());
				ps.setString(5, member.getMemId());
			}
		});
		return result;
	}

	@Override
	public int memberDelete(final Member member) {
		
		int result = 0;
		final String sql = "DELETE member WHERE memId=? AND memPw = ?";
		result = template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, member.getMemId());
				ps.setString(2, member.getMemPw());	
			}
		});
		
		return result;
	}

}
