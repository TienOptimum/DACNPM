package com.hotelreservation.repositories;

import com.hotelreservation.model.RoomStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomStatusRepository extends JpaRepository<RoomStatus,Integer> {
}
