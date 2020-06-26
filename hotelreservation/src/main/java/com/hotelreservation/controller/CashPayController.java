package com.hotelreservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CashPayController {

    @RequestMapping("/cashPay")
    private String cashPayRedirect(){
        return "QuanLyThuChi/QuanLyThuChi";
    }
}
