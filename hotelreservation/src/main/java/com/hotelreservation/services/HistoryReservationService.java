package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryReservation;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

public interface HistoryReservationService {

    public List<HistoryReservation> getHistoryReservations();
    public void saveHistoryReservation(HistoryReservation historyReservation);
    public HistoryReservation getHistoryReservation(int id) throws ResourceNotFoundException;
    public List<HistoryReservation> getHistoryReservationByReservationID(int id) throws ResourceNotFoundException;
    public boolean checkRoomAvailable(Timestamp checkInDate, Timestamp checkOutDate);
}
