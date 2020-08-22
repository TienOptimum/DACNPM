package com.hotelreservation.repositories;

import com.hotelreservation.model.KindOfRoom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface KindOfRoomRepository extends JpaRepository<KindOfRoom, Integer> {

    @Query(nativeQuery = true,
            value = "select * " +
                    "from kind_of_room " +
                    "where kind_of_room.name =:name ")
    List<KindOfRoom> checkKindOfRoomAvailable(@Param("name") String name);
}
