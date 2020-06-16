package com.hotelReservationManager.controller;

import java.sql.Time;

public class PaymentMethod {

    private String id;
    private String name;
    private double price;
    private Time checkInTime;
    private Time checkOutTime;
    private double surcharge;
    private double priceForHoliday;

    public PaymentMethod() {
    }

    public PaymentMethod(String id, String name, double price, Time checkInTime, Time checkOutTime, double surcharge, double priceForHoliday) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.checkInTime = checkInTime;
        this.checkOutTime = checkOutTime;
        this.surcharge = surcharge;
        this.priceForHoliday = priceForHoliday;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Time getCheckInTime() {
        return checkInTime;
    }

    public void setCheckInTime(Time checkInTime) {
        this.checkInTime = checkInTime;
    }

    public Time getCheckOutTime() {
        return checkOutTime;
    }

    public void setCheckOutTime(Time checkOutTime) {
        this.checkOutTime = checkOutTime;
    }

    public double getSurcharge() {
        return surcharge;
    }

    public void setSurcharge(double surcharge) {
        this.surcharge = surcharge;
    }

    public double getPriceForHoliday() {
        return priceForHoliday;
    }

    public void setPriceForHoliday(double priceForHoliday) {
        this.priceForHoliday = priceForHoliday;
    }
}
