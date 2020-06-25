package com.hotelreservation.model;

import javax.persistence.*;

@Entity
@Table(name="history_stock")
public class HistoryStock {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "menu_id")
    private Menu menu;

    @ManyToOne
    @JoinColumn(name = "stock_id")
    private Stock stock;

    @Column(name = "amount")
    private Integer amount;
}
