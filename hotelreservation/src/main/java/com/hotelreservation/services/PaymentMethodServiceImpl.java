package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.PaymentMethod;
import com.hotelreservation.repositories.PaymentMethodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PaymentMethodServiceImpl implements PaymentMethodService {

@Autowired
private PaymentMethodRepository paymentMethodRepository;

    @Override
    @Transactional
    public List<PaymentMethod> getPaymentMethods() {
        return paymentMethodRepository.findAll();
    }

    @Override
    @Transactional
    public void savePaymentMethod(PaymentMethod paymentMethod) {
        paymentMethodRepository.save(paymentMethod);
    }

    @Override
    public PaymentMethod getPaymentMethod(int id) throws ResourceNotFoundException {
        return paymentMethodRepository.findById(id).orElseThrow(()-> new ResourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deletePaymentMethod(int id) {
        paymentMethodRepository.deleteById(id);
    }
}
