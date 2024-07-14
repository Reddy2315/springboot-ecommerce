package com.wipro.ecommerce.service;

import java.util.List;

import com.wipro.ecommerce.entity.User;

public interface UserService {

	public User addUser(User user);
	public List<User> getAllUsers();
	public User getuserById(Integer userId);
	public User updateUserById(User user);
	public String deleteById(Integer userId);
	public User authenticateUser(String email, String password);
	public User registerUser(User user);
}
