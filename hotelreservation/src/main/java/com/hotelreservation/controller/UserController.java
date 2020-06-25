package com.hotelreservation.controller;

import com.hotelreservation.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @Autowired
    UserRepository userRepo;

    @RequestMapping("/")
    public String home(){
        return "Hello World!";
    }


    @RequestMapping("/users")
    public String home(Model model) {
        model.addAttribute("users", userRepo.findAll());
        return "users";
    }
}

