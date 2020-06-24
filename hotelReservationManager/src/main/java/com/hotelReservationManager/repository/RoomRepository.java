package com.hotelReservationManager.repository;

import com.hotelReservationManager.model.Room;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository extends JpaRepository<Room,Integer> {
    boolean existsByName(String name);

}
