package com.wipro.ecommerce.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.ecommerce.entity.Product;
import com.wipro.ecommerce.repository.ProductRepository;
@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductRepository productRepository;

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

	@Override
	public Product addProduct(Product product) {
		//
		return productRepository.save(product);
	}

	// Method to fetch product by name
    public Product getProductByName(String name) {
        return productRepository.findByName(name);
    }
	
	
}
