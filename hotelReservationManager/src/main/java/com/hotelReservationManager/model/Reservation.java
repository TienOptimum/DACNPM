package com.hotelReservationManager.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "reservation")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "customer_Name")
    private String customerName;
    @Column(name = "phone")
    private String phone;
    @Temporal(TemporalType.TIMESTAMP)
    @Column (name = "checkIn_date")
    private Date checkInDate;
    @Temporal(TemporalType.TIMESTAMP)
    @Column (name = "checkOut_date")
    private Date checkOutDate;
    @Column(name = "deposits")
    private Double deposits;
    @Column(name = "note")
    private String note;
}
