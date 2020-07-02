package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.Reservation;
import com.hotelreservation.repositories.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ReservationServiceImpl implements ReservationService{

    @Autowired
    private ReservationRepository reservationRepository;


    @Override
    @Transactional
    public List<Reservation> getReservations() {
        return reservationRepository.findAll();
    }

    @Override
    @Transactional
    public void saveReservation(Reservation reservation) {
        reservationRepository.save(reservation);

    }

    @Override
    @Transactional
    public Reservation getReservation(int id) throws ResourceNotFoundException {
        return reservationRepository.findById(id).orElseThrow(
                ()-> new ResourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deleteReservation(int id) {
        reservationRepository.deleteById(id);
    }
}
