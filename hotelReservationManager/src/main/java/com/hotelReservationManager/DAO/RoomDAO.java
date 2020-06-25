package com.hotelReservationManager.DAO;

import com.hotelReservationManager.model.Room;
import com.hotelReservationManager.repository.RoleRepository;
import com.hotelReservationManager.repository.RoomRepository;
import com.hotelReservationManager.repository.UserRepository;
import com.hotelReservationManager.repository.UserRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RoomDAO {
    @Autowired
    UserRepository userRepository;

    @Autowired
    RoomRepository roomRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    UserRoleRepository userRoleRepository;

    public boolean isExistedRoomName(String name){
        return roomRepository.existsByName(name);
    }

    public Room getRoomById(Integer id){
        return roomRepository.findById(id).get();
    }


}
