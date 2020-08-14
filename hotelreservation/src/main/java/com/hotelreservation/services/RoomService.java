package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.Room;

import java.util.List;

public interface RoomService {
    public List<Room> getRooms();
    public void saveRoom(Room room);
    public Room getRoom(int id) throws ResourceNotFoundException;
    public boolean checkRoomAvailable(String name);
    public void deleteRoom(int id) throws ResourceNotFoundException;
    public List<Room> getRoomByRoomStatusID(int id);
}
