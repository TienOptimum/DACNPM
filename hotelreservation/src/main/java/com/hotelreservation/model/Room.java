package com.hotelreservation.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name="room")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name="name")
    private String name;
    @ManyToOne
    @JoinColumn(name="kind_of_room_id")
    private KindOfRoom kindOfRoom;
    @ManyToOne
    @JoinColumn(name = "payment_method_id")
    private PaymentMethod paymentMethod;
    @Column(name="description")
    private String description;
    @ManyToOne
    @JoinColumn(name = "room_status_id")
    private RoomStatus roomStatus;

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public KindOfRoom getKindOfRoom() {
        return kindOfRoom;
    }

    public PaymentMethod getPaymentMethod() {
        return paymentMethod;
    }

    public RoomStatus getRoomStatus() {
        return roomStatus;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setKindOfRoom(KindOfRoom kindOfRoom) {
        this.kindOfRoom = kindOfRoom;
    }

    public void setPaymentMethod(PaymentMethod paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public void setRoomStatus(RoomStatus roomStatus) {
        this.roomStatus = roomStatus;
    }
}
