package com.hotelreservation.controller;

import com.hotelreservation.repositories.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {
    @Autowired
    MenuRepository menuRepository;

    @RequestMapping("/main/menu")
    public String viewAll(Model model){
        model.addAttribute("menus",menuRepository.findAll());
        return "QLHT/QLHT-Menu";
    }
}
