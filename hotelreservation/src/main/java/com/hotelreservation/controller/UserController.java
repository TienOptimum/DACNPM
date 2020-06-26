package com.hotelreservation.controller;

import com.hotelreservation.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @RequestMapping("/user")
    public String userRedirect() {
        return "TaiKhoan/TaiKhoan";
    }
}

