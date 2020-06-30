package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.KindOfRoom;

import java.util.List;

public interface KindOfRoomService {

    public List<KindOfRoom> getKindOfRooms();
    public void saveKindOfRoom(KindOfRoom kindOfRoom);
    public KindOfRoom getKindOfRoom(int id) throws ResourceNotFoundException;
    public void deleteKindOfRoom(int id) throws ResourceNotFoundException;
}
