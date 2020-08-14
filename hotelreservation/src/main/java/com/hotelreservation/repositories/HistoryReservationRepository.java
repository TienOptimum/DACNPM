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
            value = "select history_reservation.id, cost, early_check_in, history_reservation.reservation_id, history_reservation.room_id, status " +
                    "from history_reservation, reservation " +
                    "where history_reservation.reservation_id = reservation.id " +
                    "and (history_reservation.room_id =:roomID)" +
                    "and ((history_reservation.status = 'ON') or (history_reservation.status = 'R_ON'))" +
                    "and ((:checkInDate between reservation.check_in_date and reservation.check_out_date) " +
                    "or (:checkOutDate between reservation.check_in_date and reservation.check_out_date)" +
                    "or (:checkInDate < reservation.check_in_date) and (:checkOutDate > reservation.check_out_date)) " )
    List<HistoryReservation> checkReservationAvailable(@Param("checkInDate") Timestamp checkInDate, @Param("checkOutDate") Timestamp checkOutDate, @Param("roomID") int roomID);

    @Query(nativeQuery = true,
            value = "select history_reservation.id, cost,early_check_in, reservation_id, room_id, status from history_reservation , room where history_reservation.room_id = room.id and room.room_status_id = :roomStatusID")
    List<HistoryReservation> findAllByRoomRoomStatusId(@Param("roomStatusID") int roomStatusID);

    @Query(nativeQuery = true,
            value = "select * from history_reservation where history_reservation.status=:status")
    List<HistoryReservation> findHistoryReservationByStatusValue(@Param("status") String status);


}
