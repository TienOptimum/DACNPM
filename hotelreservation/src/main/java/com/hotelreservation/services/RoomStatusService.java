package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.RoomStatus;

public interface RoomStatusService {
    public RoomStatus getRoomStatusById(int id) throws ResourceNotFoundException;
}
