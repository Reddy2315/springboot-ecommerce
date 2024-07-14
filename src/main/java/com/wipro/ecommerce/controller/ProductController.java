package com.wipro.ecommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wipro.ecommerce.entity.Product;
import com.wipro.ecommerce.service.ProductService;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @PostMapping("/product")
    public String handleProductPost(@RequestParam("productName") String productName, Model model) {
        Product product = productService.getProductByName(productName);
        if (product != null) {
            model.addAttribute("product", product);
        }
        return "productDetails"; // Name of the JSP page to display product details
    }
    
    
//    @GetMapping("/list")
//    public String getProducts(Model model) {
//        List<Product> products = productService.getAllProducts();
//        model.addAttribute("products", products);
//        return "productDetails"; // Thymeleaf template name (index.html)
//    }
    
//    // Endpoint to display product details by name
//    @PostMapping("/product/{name}")
//    public String getProductByName(@PathVariable("name") String productName, Model model) {
//        Product product = productService.getProductByName(productName);
//        if (product != null) {
//            model.addAttribute("product", product);
//        }
//        return "/list"; // This should be the name of your Thymeleaf template
//    }
    
}
