package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.PaymentMethod;

import java.util.List;

public interface PaymentMethodService {

    public List<PaymentMethod> getPaymentMethods();
    public void savePaymentMethod(PaymentMethod paymentMethod);
    public PaymentMethod getPaymentMethod(int id) throws ResourceNotFoundException;
    public void deletePaymentMethod(int id) throws ResourceNotFoundException;
}
