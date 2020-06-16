package com.hotelReservationManager.controller;

import org.springframework.stereotype.Service;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class PaymentMethodService {

    private List<PaymentMethod> payments = new ArrayList<>(Arrays.asList(
            new PaymentMethod("1","Phòng đơn",250000,Time.valueOf("12:00:00"),Time.valueOf("12:00:00"),10000,350000),
            new PaymentMethod("2","Phòng đôi",300000, Time.valueOf("12:00:00"),Time.valueOf("12:00:00"),10000,500000)
            ));

    public List<PaymentMethod> getAllPaymentMethod(){
        return  payments;
    }

    public PaymentMethod getPaymentMethod(String id){
        return payments.stream().filter(t-> t.getId().equals(id)).findFirst().get();
    }

    public void addPaymentMethod(PaymentMethod paymentMethod) {
        payments.add(paymentMethod);
    }
}
