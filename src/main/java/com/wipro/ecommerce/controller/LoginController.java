package com.wipro.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wipro.ecommerce.entity.User;
import com.wipro.ecommerce.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class LoginController {

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String getLoginPage() {
        return "login";
    }

    @PostMapping("/user")
    public String loginUser(@RequestParam("email") String email,
                            @RequestParam("password") String password,
                            HttpSession session) {
        User authenticatedUser = userService.authenticateUser(email, password);

        if (authenticatedUser != null) {
            session.setAttribute("userName", authenticatedUser.getUserName()); // Store username in session
            return "redirect:/"; // Redirect to welcome page 
        } else {
            return "redirect:/login?error=true"; // Redirect to login page with error parameter
        }
    }

   
}
