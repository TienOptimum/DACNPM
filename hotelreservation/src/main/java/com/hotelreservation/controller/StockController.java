package com.hotelreservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StockController {

    @RequestMapping("/warehouse")
    private String warehouseRedirect(){
        return "QuanLyKho/QuanLyKho";
    }
}
