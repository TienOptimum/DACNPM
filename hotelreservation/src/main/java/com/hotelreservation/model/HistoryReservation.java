package com.hotelreservation.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
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
    @JsonIgnoreProperties("reservations")
    private Reservation reservation;
    @ManyToOne
    @JoinColumn(name="room_id")
    private Room room;
    @Column(name = "early_check_in")
    private String earlyCheckIn;
    @Column(name = "cost")
    private double cost;
    @Column(name= "status")
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEarlyCheckIn() {
        return earlyCheckIn;
    }

    public void setEarlyCheckIn(String earlyCheckIn) {
        this.earlyCheckIn = earlyCheckIn;
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

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }
}
