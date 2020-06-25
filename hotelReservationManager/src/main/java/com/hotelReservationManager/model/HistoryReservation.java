package com.hotelReservationManager.model;

import javax.persistence.*;

@Entity
@Table(name = "history_reservation")
public class HistoryReservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @JoinColumn(name="reservation_id")
    private Reservation reservation;
    @JoinColumn(name="room_id")
    private Room room;
}
