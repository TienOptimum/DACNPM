package com.hotelreservation.repositories;

import com.hotelreservation.model.HistoryMenu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HistoryMenuRepository extends JpaRepository<HistoryMenu, Integer> {

    @Query(nativeQuery = true,
            value = "select * from history_menu where history_menu.history_reservation_id=:reservationID")
    List<HistoryMenu> findHistoryMenuByHisReservationID(@Param("reservationID") int reservationID);

}
