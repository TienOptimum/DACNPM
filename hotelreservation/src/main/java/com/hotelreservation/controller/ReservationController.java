package com.hotelreservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {

    @RequestMapping("/lounge")
    private String test(){
        return "ThueTraPhong/ThueTraPhong-PhongCho";
    }
}
