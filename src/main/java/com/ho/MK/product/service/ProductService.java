package com.ho.MK.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ho.MK.product.Product;
import com.ho.MK.product.dao.ProductDao;

@Service
public class ProductService implements IProductService {

	@Autowired
	ProductDao dao;
	
	@Override
	public void productRegister(Product product) {
		int result = dao.productInsert(product);
		
		if(result == 0) {
			System.out.println("Fail");
		}else {
			System.out.println("Success");
		}
	}
	
	@Override
	public List<Product> listProduct(){
		List<Product> products = dao.listProduct();
		if(products == null) {
			System.out.println("fail");
		}else {
			System.out.println("success");
		}
		return products;
	}
}
