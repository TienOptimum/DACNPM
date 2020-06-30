package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.repositories.KindOfRoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class KindOfRoomServiceImpl implements KindOfRoomService{

    @Autowired
    private KindOfRoomRepository kindOfRoomRepository;


    @Override
    @Transactional
    public List<KindOfRoom> getKindOfRooms() {
        return kindOfRoomRepository.findAll();
    }

    @Override
    @Transactional
    public void saveKindOfRoom(KindOfRoom kindOfRoom) {
        kindOfRoomRepository.save(kindOfRoom);
    }

    @Override
    @Transactional
    public KindOfRoom getKindOfRoom(int id) throws ResourceNotFoundException {
        return kindOfRoomRepository.findById(id).orElseThrow(
                ()-> new ResourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deleteKindOfRoom(int id) {
        kindOfRoomRepository.deleteById(id);
    }
}
