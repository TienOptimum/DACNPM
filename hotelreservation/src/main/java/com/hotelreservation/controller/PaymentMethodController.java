package com.hotelreservation.controller;

import com.hotelreservation.repositories.PaymentMethodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentMethodController {

    @Autowired
    PaymentMethodRepository paymentMethodRepository;

    @RequestMapping("/paymentMethod")
    public String viewAll(Model model){
        model.addAttribute("paymentmethods",paymentMethodRepository.findAll());
        return "QLHT/QLHT-CachTinhTien";
    }
}
