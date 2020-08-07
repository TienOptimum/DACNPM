package com.hotelreservation.repositories;

import com.hotelreservation.model.RoomStatus;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomStatusRepository extends JpaRepository<RoomStatus,Integer> {
}
