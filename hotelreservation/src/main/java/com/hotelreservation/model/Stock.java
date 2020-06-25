package com.hotelreservation.model;

import lombok.*;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "stock")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "stockIn_date")
    private Date stockInDate;

    @ManyToMany
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @JoinTable(name="stock_menu",
                joinColumns = @JoinColumn(name = "stock_id"),
                inverseJoinColumns = @JoinColumn(name = "menu_id")
    )
    private Collection<Menu> menus;

    @Column(name="amount")
    private Integer amount;
}
