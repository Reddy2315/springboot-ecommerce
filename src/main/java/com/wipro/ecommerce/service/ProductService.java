package com.wipro.ecommerce.service;

import java.util.List;

import com.wipro.ecommerce.entity.Product;

public interface ProductService {

	public List<Product> getAllProducts();

	public Product addProduct(Product product);

	public Product getProductByName(String productName); 
	
} 
