package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryReservation;
import com.hotelreservation.repositories.HistoryReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
