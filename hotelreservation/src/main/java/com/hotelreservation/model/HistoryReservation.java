package com.hotelreservation.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "history_reservation")
public class HistoryReservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @JoinColumn(name="reservation_id")
    @ElementCollection
    private List<Reservation> reservation;
    @JoinColumn(name="room_id")
    @ElementCollection
    private List<Room> room;
}
