package com.hotelreservation.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "stock")
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "stockIn_date")
    private Date stockInDate;
    @JoinColumn(name = "menu_id")
    @ElementCollection
    private List<Menu> menu;

}
