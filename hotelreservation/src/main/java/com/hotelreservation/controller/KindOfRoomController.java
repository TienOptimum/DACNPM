package com.hotelreservation.controller;

import com.hotelreservation.repositories.KindOfRoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KindOfRoomController {
    @Autowired
    KindOfRoomRepository kindOfRoomRepository;

    @RequestMapping("/main/kindofroom")
    public String viewAll(Model model){
        model.addAttribute("kindofrooms",kindOfRoomRepository.findAll());
        return "QLHT/QLHT-LoaiPhong";
    }
}
