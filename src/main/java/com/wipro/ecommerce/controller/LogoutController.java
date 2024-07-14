package com.wipro.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class LogoutController {

	 @GetMapping("/logout")
	    public String logout(HttpSession session) {
	        session.invalidate(); // Invalidate the session
	        return "redirect:/"; // Redirect to the index page
	    }
}
