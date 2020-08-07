package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.RoomStatus;

public interface RoomStatusService {
    RoomStatus getRoomStatusByID(Integer id) throws ResourceNotFoundException;
}
