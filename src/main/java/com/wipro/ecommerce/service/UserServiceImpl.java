package com.wipro.ecommerce.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wipro.ecommerce.entity.User;
import com.wipro.ecommerce.repository.UserRepository;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	
	@Override
	@Transactional
    public User registerUser(User user) {
        // Implement registration logic, e.g., save user to database
        return userRepository.save(user); // Save and return the registered user
    }

	@Override
    @Transactional
    public User authenticateUser(String email, String password) {
        User user = userRepository.findByEmail(email); // Fetch user by email from database
        if (user != null && user.getPassword().equals(password)) {
            return user; // Return user if email and password match
        }
        return null; // Return null if authentication fails
    }
	
	
	@Override
	public User addUser(User user) {
		
		return userRepository.save(user);
	}

	@Override
	public List<User> getAllUsers() {
		
		return userRepository.findAll();
	}

	@Override
	public User getuserById(Integer userId) {
		
		return userRepository.findById(userId).get();
	}

	@Override
	public User updateUserById(User user) {
		User loadedUser=getuserById(user.getUserId());
		loadedUser.setUserName(user.getUserName());
		loadedUser.setEmail(user.getEmail());
		loadedUser.setPassword(user.getPassword());
		loadedUser.setMobileNumber(user.getMobileNumber());
		loadedUser.setAddress(user.getAddress());	
		return loadedUser;
		
	}

	@Override
	public String deleteById(Integer userId) {
		userRepository.deleteById(userId);
		return "Success";
	}

}
