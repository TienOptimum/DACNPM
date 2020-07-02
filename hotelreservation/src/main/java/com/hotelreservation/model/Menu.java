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

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public Double getEntryPrice() {
        return entryPrice;
    }

    public Double getPrice() {
        return price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setEntryPrice(Double entryPrice) {
        this.entryPrice = entryPrice;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Set<HistoryStock> getHistoryStocks() {
        return historyStocks;
    }

    public void setHistoryStocks(Set<HistoryStock> historyStocks) {
        this.historyStocks = historyStocks;
    }
}
