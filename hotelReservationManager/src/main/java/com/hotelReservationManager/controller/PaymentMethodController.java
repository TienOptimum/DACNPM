package com.hotelReservationManager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.Time;
import java.util.Arrays;
import java.util.List;

@RestController
public class PaymentMethodController {

    @Autowired
    private PaymentMethodService paymentMethodService;

    @RequestMapping("/paymentMethod")
    public List<PaymentMethod> getAll() {
        return paymentMethodService.getAllPaymentMethod();
    }

    @RequestMapping("/paymentMethod/{id}")
    public PaymentMethod getPaymentMethod(@PathVariable String id){
        return paymentMethodService.getPaymentMethod(id);
    }

    @RequestMapping(method= RequestMethod.POST, value="/paymentMethod")
    public void addPaymentMethod(@RequestBody PaymentMethod paymentMethod){
        paymentMethodService.addPaymentMethod(paymentMethod);
    }

    @RequestMapping(method= RequestMethod.PUT, value="/paymentMethod/{id}")
    public void updatePaymentMethod(@RequestBody PaymentMethod paymentMethod, @PathVariable String id){
        paymentMethodService.updatePaymentMethod(id, paymentMethod);
    }

    @RequestMapping(method= RequestMethod.DELETE, value="/paymentMethod/{id}")
    public void deletePaymentMethod(@PathVariable String id){
        paymentMethodService.deletePaymentMethod(id);
    }
}
