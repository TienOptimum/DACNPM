package com.hotelreservation.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Time;
import java.util.Date;

@Entity
@Table(name="payment_method")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentMethod {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name="name")
    private String name;
    @Column(name = "price")
    private Double price;
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="checkInTime")
    private Date checkInTime;
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="checkOutTime")
    private Date checkOutTime;
    @Column(name="surcharge")
    private Double surcharge;
    @Column(name="priceForHoliday")
    private Double priceForHoliday;
}
