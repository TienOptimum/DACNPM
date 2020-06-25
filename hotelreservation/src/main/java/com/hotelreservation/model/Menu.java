package com.hotelreservation.model;

import lombok.*;

import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Entity
@Table(name = "menu")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Menu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name")
    private String name;
    @Column(name = "type")
    private String type;
    @Column(name = "entry_price")
    private Double entryPrice;
    @Column(name = "price")
    private Double price;

    @OneToMany(mappedBy = "menu")
    private Set<HistoryStock> historyStocks;
}
