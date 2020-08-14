package com.hotelreservation.repositories;

import com.hotelreservation.model.HistoryReservation;
import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.model.Room;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface RoomRepository extends JpaRepository<Room,Integer> {
    @Query(nativeQuery = true,
            value = "select * from room where room_status_id = :roomStatusID")
    List<Room> findAllByRoomRoomStatusId(@Param("roomStatusID") int roomStatusID);

    @Query(nativeQuery = true,
            value = "select * " +
                    "from room " +
                    "where room.name =:name ")
    List<Room> checkRoomAvailable(@Param("name") String name);
}
