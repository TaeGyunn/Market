package com.ho.MK.product.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ho.MK.product.Product;
import com.mchange.v2.c3p0.ComboPooledDataSource;

@Repository
public class ProductDao implements IProductDao {
	
	private JdbcTemplate template;
	
	@Autowired
	public ProductDao(ComboPooledDataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int productInsert(final Product product) {
		
		int result = 0;
		
		final String sql = "INSERT INTO product (pro_kind, pro_name, pro_price, pro_unit, pro_packaging, pro_weight, pro_img) values (?,?,?,?,?,?,?)";
		
		result = template.update(sql, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException{
				ps.setString(1, product.getPro_kind());
				ps.setString(2, product.getPro_name());
				ps.setInt(3, product.getPro_price());
				ps.setString(4, product.getPro_unit());
				ps.setString(5, product.getPro_packaging());
				ps.setString(6, product.getPro_weight());
				ps.setString(7, product.getPro_img());
				
			}
		});
		return result;
	}
	
	@Override
	public List<Product> listProduct(){
		List<Product> products = null;
		final String sql = "SELECT * FROM product";
		products = template.query(sql, new RowMapper<Product>() {
				
			@Override
			public Product mapRow(ResultSet rs, int rowNum) throws SQLException{
				Product pro = new Product();
				pro.setPro_id(rs.getInt("pro_id"));
				pro.setPro_name(rs.getString("pro_name"));
				pro.setPro_kind(rs.getString("pro_kind"));
				pro.setPro_price(rs.getInt("pro_price"));
				pro.setPro_unit(rs.getString("pro_unit"));
				pro.setPro_weight(rs.getString("pro_weight"));
				pro.setPro_packaging(rs.getString("pro_packaging"));
				pro.setPro_img(rs.getString("pro_img"));
				return pro;
			}
		});
		if(products.isEmpty()) return null;
		return products;
	}
	
	@Override
	public Product productSelect(final int proid) {
		
		List<Product> products = null;
		System.out.println(proid);
		final String sql = "SELECT * FROM product WHERE pro_id = ?";
		products = template.query(sql, new Object[]{proid}, new RowMapper<Product>() {
			
			@Override
			public Product mapRow(ResultSet rs, int rowNum) throws SQLException{
				Product pro = new Product();
				pro.setPro_id(rs.getInt("pro_id"));
				pro.setPro_name(rs.getString("pro_name"));
				pro.setPro_kind(rs.getString("pro_kind"));
				pro.setPro_price(rs.getInt("pro_price"));
				pro.setPro_unit(rs.getString("pro_unit"));
				pro.setPro_weight(rs.getString("pro_weight"));
				pro.setPro_packaging(rs.getString("pro_packaging"));
				pro.setPro_img(rs.getString("pro_img"));
				return pro;
			}
		});
		if(products.isEmpty()) return null;
		return products.get(0);
	}
	
	@Override
	public int productUpdate(final Product product) {
		
		int result = 0;
		
		final String sql = "UPDATE product SET pro_name = ?, pro_price = ?, pro_unit = ?, pro_weight = ?, pro_packaging";
		result = template.update(sql, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException{
				ps.setString(1, product.getPro_name());
				ps.setInt(2, product.getPro_price());
				ps.setString(3, product.getPro_unit());
				ps.setString(4, product.getPro_weight());
				ps.setString(5, product.getPro_packaging());
			}
		});
		return result;
	}
}
