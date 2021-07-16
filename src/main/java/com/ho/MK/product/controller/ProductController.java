package com.ho.MK.product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ho.MK.product.Product;
import com.ho.MK.product.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService service;
	
			//Product registration
			@RequestMapping("/17_AdminProduct")
			public String AdminProductForm(@ModelAttribute("pro")Product product, HttpSession session) {
				return"/17_AdminProduct";
			}
			
			@RequestMapping("/ProductRegister")
			public String ProducRegister(@ModelAttribute("pro")Product product, MultipartHttpServletRequest request) {
				
				MultipartFile mf = request.getFile("pro_image");
				if(mf == null) {System.out.println("null");}
				String path = request.getSession().getServletContext().getRealPath("/");
				System.out.println(path);
				String attach_path = "resources/uploadimg/";
				String fileName = mf.getOriginalFilename();
				File uploadFile = new File(path+attach_path+fileName);
				try {
					mf.transferTo(uploadFile);
				}catch(IllegalStateException e) {
					e.printStackTrace();
				}catch(IOException e) {
					e.printStackTrace();
				}
				
				product.setPro_img(fileName);
				service.productRegister(product);
				
				return"/16_AdminForm";
			}
			
			//Product Modify
			@RequestMapping("/18_ProductModify")
			public ModelAndView list(@ModelAttribute("pro")Product product, ModelAndView mav) {
				mav.setViewName("/18_ProductModify");
				mav.addObject("list", service.listProduct());
				return mav;
			}
			@RequestMapping("/ProductModify")
			public String ProductModify(@ModelAttribute("pro")Product product, HttpSession session) {
				Product pro = service.productModify(product);
				if(pro == null) {
					return "/19_ProductDetail";
				}
				System.out.println("Modify Success");
				return "/16_AdminForm";
			}
			
			
			//Product Select
			@RequestMapping("/19_ProductDetail/{pro_id}")
			public String ProductDetail(@ModelAttribute("pro")Product product, HttpSession session, @PathVariable("pro_id")int pro_id) {
				Product pro = service.productSearch(pro_id);
				session.setAttribute("pro", pro);
				return"/19_ProductDetail";
			}
			
			
}
