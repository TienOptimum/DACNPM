package com.hotelreservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SystemController {

    @RequestMapping("main/manager")
    private String systemRedirect(){
        return "QLHT/QuanLyHeThong";
    }
}
