package com.wipro.ecommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wipro.ecommerce.entity.User;
import com.wipro.ecommerce.service.UserService;

@Controller
@RequestMapping("/")//to create path to access
public class UserController {
	
	@Autowired
	private UserService userService;

	@PostMapping("/new-user")
    public String addUser(@ModelAttribute("user") User user) {
        userService.registerUser(user); // Assuming registerUser saves the user
        return "redirect:/login"; // Redirect to login page after successful registration
    }

	@GetMapping("/user/{id}")
	public User getuserDetailsById(@PathVariable("id") Integer userId) {
		return userService.getuserById(userId);
	}
	
	@GetMapping("/users")
	public List<User> getAllUserDetails() {
		return userService.getAllUsers();
	}
	@PutMapping(path="/user",consumes="application/json")
	public User updateUserDetails(@RequestBody User user) {
		return userService.updateUserById(user);
	}
	
	@DeleteMapping("/user/{id}")
	public String deleteUserDetails(@PathVariable("id") Integer userId) {
		return userService.deleteById(userId);
	}
	
}
