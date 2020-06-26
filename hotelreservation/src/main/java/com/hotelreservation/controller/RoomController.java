package com.hotelreservation.controller;

import com.hotelreservation.repositories.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {
    @Autowired
    RoomRepository roomRepository;

    @RequestMapping("/room")
    public String viewAll(Model model){
        model.addAttribute("rooms",roomRepository.findAll());
        return "QLHT/QLHT-Phong";
    }
}
