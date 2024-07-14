package com.wipro.ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.ecommerce.entity.Product;
@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

	public Product findByName(String name);
	
}
