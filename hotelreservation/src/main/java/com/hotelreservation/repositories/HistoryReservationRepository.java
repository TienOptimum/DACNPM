package com.hotelreservation.repositories;

import com.hotelreservation.model.HistoryReservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.sql.Timestamp;
import java.util.List;

public interface HistoryReservationRepository extends JpaRepository<HistoryReservation, Integer> {

    @Query(nativeQuery = true,
            value = "select * from history_reservation where history_reservation.reservation_id=:reservationID")
    List<HistoryReservation> findHistoryReservationByReservationID(@Param("reservationID") int reservationID);

    @Query(nativeQuery = true,
            value = "select history_reservation.id, cost, early_check_in, history_reservation.reservation_id, history_reservation.room_id from history_reservation, reservation where history_reservation.reservation_id = reservation.id and (:checkInDate between reservation.check_in_date and reservation.check_out_date) and (:checkOutDate between reservation.check_in_date and reservation.check_out_date) " )
    List<HistoryReservation> checkReservationAvailable(@Param("checkInDate") Timestamp checkInDate, @Param("checkOutDate") Timestamp checkOutDate);

    @Query(nativeQuery = true,
            value = "select history_reservation.id, cost,early_check_in, reservation_id, room_id from history_reservation , room where history_reservation.room_id = room.id and room.room_status_id = :roomStatusID")
    List<HistoryReservation> findAllByRoomRoomStatusId(@Param("roomStatusID") int roomStatusID);
}
