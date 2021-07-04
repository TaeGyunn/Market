package com.ho.MK.product.dao;

import java.util.List;

import com.ho.MK.product.Product;

public interface IProductDao {
	int productInsert(Product product);
	List<Product> listProduct();
	
}
