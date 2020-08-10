package com.hotelreservation.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

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
    @DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
    @Column (name = "checkIn_date")
    private Date checkInDate;
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
    @Column (name = "checkOut_date")
    private Date checkOutDate;
    @Column(name = "deposits")
    private Double deposits;
    @Column(name = "note")
    private String note;
    @OneToMany(mappedBy = "reservation")
    private List<HistoryReservation> reservations;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(Date checkInDate) {
        this.checkInDate = checkInDate;
    }

    public Date getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(Date checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    public Double getDeposits() {
        return deposits;
    }

    public void setDeposits(Double deposits) {
        this.deposits = deposits;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

}
