package com.hotelReservationManager.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "stock")
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "stockIn_date")
    private Date stockInDate;
    @ManyToMany
    @JoinColumn(name = "menu_id")
    private Menu menu;
}
