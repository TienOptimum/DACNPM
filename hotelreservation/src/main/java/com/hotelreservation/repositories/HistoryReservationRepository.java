package com.hotelreservation.repositories;

import com.hotelreservation.model.HistoryReservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.Temporal;
import org.springframework.data.repository.query.Param;

import java.sql.Timestamp;
import java.util.List;

public interface HistoryReservationRepository extends JpaRepository<HistoryReservation, Integer> {

    @Query(nativeQuery = true,
            value = "select * from history_reservation where history_reservation.reservation_id=:reservationID")
    List<HistoryReservation> findHistoryReservationByReservationID(@Param("reservationID") int reservationID);

    @Query(nativeQuery = true,
            value = "select * from history_reservation, reservation where history_reservation.reservation_id = reservation.id and (reservation.check_in_date between :checkInDate and :checkOutDate) and (reservation.check_out_date between :checkInDate and :checkOutDate) " )
    List<HistoryReservation> checkReservationAvailable(@Param("checkInDate") Timestamp checkInDate, @Param("checkOutDate") Timestamp checkOutDate);
}
