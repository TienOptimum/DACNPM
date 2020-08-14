package com.hotelreservation.repositories;

import com.hotelreservation.model.KindOfRoom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface KindOfRoomRepository extends JpaRepository<KindOfRoom, Integer> {

    @Query(nativeQuery = true,
            value = "select * " +
                    "from kind_of_room " +
                    "where kind_of_room.name =:name ")
    List<KindOfRoom> checkKindOfRoomAvailable(@Param("name") String name);
}
