package com.ho.MK.Naver;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Repository
public class NaverDao {
	private JdbcTemplate template;
	
	@Autowired
	public NaverDao(ComboPooledDataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	public int NmemberInsert(final NaverMember Nmember) {
		
		int result =  0;
		
		final String sql = "INSERT INTO Nmember (NaId, NaName, NaEmail, NaNumber) values (?,?,?,?)";
	
		result = template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, Nmember.getNaId());
				ps.setString(2, Nmember.getNaName());
				ps.setString(3, Nmember.getNaEmail());
				ps.setString(4, Nmember.getNaNumber());
		
			}
			
		});
		return result;
	}
	
	public NaverMember NmemberSelect(NaverMember Nmember) {
			
			List<NaverMember> Nmembers = null;
			
			final String sql = "SELECT * FROM Nmember WHERE NaId = ? ";
			Nmembers = template.query(sql, new Object[] {Nmember.getNaId()}, new RowMapper<NaverMember>() {
	
				@Override
				public NaverMember mapRow(ResultSet rs, int rowNum) throws SQLException {
					NaverMember Nmem = new NaverMember();
					Nmem.setNaId(rs.getString("NaId"));
					Nmem.setNaEmail(rs.getString("NaEmail"));
					Nmem.setNaName(rs.getString("NaName"));
					Nmem.setNaNumber(rs.getString("NaNumber"));
					
					return Nmem;
				}
				
			});
			if(Nmembers.isEmpty())
			return null;
			
			return Nmembers.get(0);
		}
	
}
