package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.Room;
import com.hotelreservation.repositories.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomServiceImpl implements RoomService{
    @Autowired
    RoomRepository roomRepository;

    @Override
    public List<Room> getRooms() {
        return roomRepository.findAll();
    }

    @Override
    public void saveRoom(Room room) {
        roomRepository.save(room);
    }

    @Override
    public Room getRoom(int id) throws ResourceNotFoundException {
        return roomRepository.findById(id).orElseThrow(
                ()-> new ResourceNotFoundException(id));
    }

    @Override
    public void deleteRoom(int id) throws ResourceNotFoundException {
        roomRepository.deleteById(id);
    }

    @Override
    public List<Room> getRoomByRoomStatusID(int id){
        return roomRepository.findAllByRoomRoomStatusId(id);
    }


}
