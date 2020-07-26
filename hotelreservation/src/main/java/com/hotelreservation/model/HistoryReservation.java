package com.hotelreservation.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "history_reservation")
public class HistoryReservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name="reservation_id")
    private Reservation reservation;
    @ManyToOne
    @JoinColumn(name="room_id")
    private Room room;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public Room getRoom() {
        return room;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
}
