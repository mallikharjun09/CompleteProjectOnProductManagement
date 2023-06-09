package com.tmf.products.controllers;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tmf.spring.demo.spring_hibernate_integration.models.Product;
import com.tmf.spring.demo.spring_hibernate_integration.services.ProductServices;

@Controller
public class ProductController {
	@Autowired
	private ProductServices service;
	
	@RequestMapping("getString")
	public String getData() {
		return "Welcome to Spring Web MVC";
	}
	
	
	@RequestMapping({"/","/home"})
	public String getIndex(ModelMap model) {
		
		model.addAttribute("pros", service.displayAllProducts());
		
		return "index";
	}
	
	@RequestMapping("newProduct")
	public String addProduct() {
		return "AddProduct";
	}
	
	@RequestMapping("/save")
	public String saveProduct(@RequestParam("pname") String name,
			@RequestParam("pcat") String category,@RequestParam("pcost") double cost,
			@RequestParam("pdom") String pdom,	@RequestParam("pdoe") String pdoe) {
		
		int id = Integer.MIN_VALUE;
		Product pro = new Product(id,name,cost,category,Date.valueOf(pdom),Date.valueOf(pdoe));
		service.addProduct(pro);
		
		return "redirect:home";
	}
	
	
	
	@RequestMapping("/edit/{id}")
	public String editProduct(@PathVariable("id") long id,ModelMap model) {
		Product pro = service.displayProductById(id);
		model.addAttribute("p", pro);
		return "EditProduct";
	}
	
	@RequestMapping("/update")
	public String updateProduct(@ModelAttribute("p")Product pro) {
		service.updateProduct(pro);
		return "redirect:home";
	}
}
