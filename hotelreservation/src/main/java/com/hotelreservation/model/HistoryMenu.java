package com.hotelreservation.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "history_menu")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class HistoryMenu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name="history_reservation_id")
    private HistoryReservation historyReservation;

    @ManyToOne
    @JoinColumn(name="menu_id")
    private Menu menu;

    @Column(name = "amount")
    private int amount;

    public Integer getId() {
        return id;
    }

    public int getAmount() {
        return amount;
    }

    public HistoryReservation getHistoryReservation() {
        return historyReservation;
    }

    public Menu getMenu() {
        return menu;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setHistoryReservation(HistoryReservation historyReservation) {
        this.historyReservation = historyReservation;
    }

    public void setMenu(Menu menu) {
        this.menu = menu;
    }
}
