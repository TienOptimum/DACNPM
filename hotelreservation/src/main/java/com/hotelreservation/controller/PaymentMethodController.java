package com.hotelreservation.controller;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.PaymentMethod;
import com.hotelreservation.services.PaymentMethodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PaymentMethodController {

    @Autowired
    PaymentMethodService paymentMethodService;

    @RequestMapping("/main/paymentMethod")
    public String viewAll(Model model){
        List<PaymentMethod> paymentMethods = paymentMethodService.getPaymentMethods();
        model.addAttribute("paymentmethods",paymentMethods);
        return "QLHT/QLHT-CachTinhTien";
    }

    @PostMapping("/main/paymentmethod/create")
    public String create(@ModelAttribute PaymentMethod paymentMethod){
        System.out.println(paymentMethod.getId());
        paymentMethodService.savePaymentMethod(paymentMethod);
        return "redirect:/main/paymentMethod";
    }

    @GetMapping("/main/paymentmethod/update")
    public String showFormForUpdate(@RequestParam("paymentmethodID") int id, Model model, Model model1) throws ResourceNotFoundException {
        PaymentMethod paymentMethod = paymentMethodService.getPaymentMethod(id);
        model.addAttribute("paymentmethodUpdate",paymentMethod);
        List<PaymentMethod> paymentMethods = paymentMethodService.getPaymentMethods();
        model1.addAttribute("paymentmethods",paymentMethods);
        return "QLHT/QLHT-CachTinhTien";
    }
}
