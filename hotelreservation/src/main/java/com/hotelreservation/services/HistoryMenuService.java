package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryMenu;

import java.util.List;

public interface HistoryMenuService {
    public List<HistoryMenu> getHistoryMenus();
    public void saveHistoryMenu(HistoryMenu historyMenu);
    public HistoryMenu getHistoryMenu(int id) throws ResourceNotFoundException;
    public List<HistoryMenu> getHisMenuByHisReservationID(int id) throws  ResourceNotFoundException;
}
