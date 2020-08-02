package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryReservation;
import com.hotelreservation.repositories.HistoryReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Service
public class HistoryReservationServiceImpl implements HistoryReservationService{

    @Autowired
    private HistoryReservationRepository historyReservationRepository;

    @Override
    @Transactional
    public List<HistoryReservation> getHistoryReservations() {
        return historyReservationRepository.findAll();
    }

    @Override
    @Transactional
    public void saveHistoryReservation(HistoryReservation historyReservation) {
        historyReservationRepository.save(historyReservation);
    }

    @Override
    @Transactional
    public HistoryReservation getHistoryReservation(int id) throws ResourceNotFoundException {
        return historyReservationRepository.findById(id).orElseThrow(
                ()-> new ResourceNotFoundException(id));
    }

    @Override
    public List<HistoryReservation> getHistoryReservationByReservationID(int id) throws ResourceNotFoundException {
        return historyReservationRepository.findHistoryReservationByReservationID(id);
    }

    @Override
    public List<HistoryReservation> getHistoryReservationByCheckRoom(Timestamp checkIn, Timestamp checkOut){
        return historyReservationRepository.checkReservationAvailable(checkIn,checkOut);
    }

    @Override
    public boolean checkRoomAvailable(Timestamp checkInDate, Timestamp checkOutDate) {
        List<HistoryReservation> historyReservations = historyReservationRepository.checkReservationAvailable(checkInDate,checkOutDate);

        if (historyReservations.size() == 0){
            return true;
        }
        return false;
    }

    @Override
    public void deleteHistoryReservation(int id) throws ResourceNotFoundException {
        historyReservationRepository.deleteById(id);
    }


}
