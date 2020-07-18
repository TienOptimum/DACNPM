package com.hotelreservation.repositories;

import com.hotelreservation.model.HistoryReservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface HistoryReservationRepository extends JpaRepository<HistoryReservation, Integer> {

    @Query(nativeQuery = true,
            value = "select * from history_reservation where history_reservation.reservation_id=:reservationID")
    List<HistoryReservation> findHistoryReservationByReservationID(@Param("reservationID") int reservationID);

}
