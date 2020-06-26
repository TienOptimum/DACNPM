package com.hotelreservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {

    @RequestMapping("/lounge")
    private String loungeRedirect(){
        return "ThueTraPhong/ThueTraPhong-PhongCho";
    }

    @RequestMapping("/reservation")
    private String reservationRedirect(){
        return "DatPhong/DatPhong";
    }
}
