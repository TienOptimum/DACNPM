package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.Reservation;

import java.util.List;

public interface ReservationService {

    public List<Reservation> getReservations();
    public void saveReservation(Reservation reservation);
    public Reservation getReservation(int id) throws ResourceNotFoundException;
    public void deleteReservation(int id) throws ResourceNotFoundException;

}
