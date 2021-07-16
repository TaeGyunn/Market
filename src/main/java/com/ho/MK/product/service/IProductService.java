package com.ho.MK.product.service;

import java.util.List;

import com.ho.MK.product.Product;

public interface IProductService {
	void productRegister(Product product);
	List<Product> listProduct();
	Product productSearch(int pro_id);
	Product productModify(Product product);
}
