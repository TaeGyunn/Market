package com.ho.MK.admin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ho.MK.admin.Admin;
import com.mchange.v2.c3p0.ComboPooledDataSource;

@Repository
public class AdminDao implements IAdminDao{
	
	private JdbcTemplate template;
	
	@Autowired
	public AdminDao(ComboPooledDataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Admin adminSelect(Admin admin) {
		
		List<Admin> admins = null;
		
		final String sql = "SELECT * FROM admin WHERE Admin_id = ? AND Admin_pw = ?";
		admins = template.query(sql, new Object[] {admin.getAdmin_id(), admin.getAdmin_pw()}, new RowMapper<Admin>() {
			
			@Override
			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException{
				Admin ad = new Admin();
				ad.setAdmin_id(rs.getString("Admin_id"));
				ad.setAdmin_pw(rs.getString("Admin_pw"));
				ad.setAdmin_name(rs.getString("Admin_name"));
				ad.setAdmin_reg_date(rs.getString("Admin_reg_date"));
				ad.setAdmin_address(rs.getString("Admin_address"));
				ad.setAdmin_tel(rs.getString("Admin_tel"));
				return ad;
			}
		});
		if(admins.isEmpty()) return null;
		
		return admins.get(0);
	}
	
}
