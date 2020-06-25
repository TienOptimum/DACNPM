package com.hotelreservation.model;

import lombok.*;

import javax.persistence.*;
import java.util.Collection;

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

    @ManyToMany(mappedBy = "menus")
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private Collection<Stock> stocks;
}
