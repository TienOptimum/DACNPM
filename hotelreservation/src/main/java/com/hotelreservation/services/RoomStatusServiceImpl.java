package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.RoomStatus;
import com.hotelreservation.repositories.RoomStatusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomStatusServiceImpl implements RoomStatusService{
    @Autowired
    RoomStatusRepository roomStatusRepository;

    @Override
    public RoomStatus getRoomStatusByID(Integer id) throws ResourceNotFoundException{
        return roomStatusRepository.findById(id).orElseThrow(
                ()-> new ResourceNotFoundException(id));
    }
}
