package com.hotelreservation.model;

import lombok.*;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Set;

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

    @OneToMany(mappedBy = "stock")
    private Set<HistoryStock> historyStocks;
}
