package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryMenu;
import com.hotelreservation.repositories.HistoryMenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class HistoryMenuServiceImpl implements HistoryMenuService{
    @Autowired
    HistoryMenuRepository historyMenuRepository;

    @Override
    @Transactional
    public List<HistoryMenu> getHistoryMenus() {
        return historyMenuRepository.findAll();
    }

    @Override
    public void saveHistoryMenu(HistoryMenu historyMenu) {
        historyMenuRepository.save(historyMenu);
    }

    @Override
    public HistoryMenu getHistoryMenu(int id) throws ResourceNotFoundException {
        return historyMenuRepository.findById(id).orElseThrow(
                ()-> new ResourceNotFoundException(id));
    }

    @Override
    public List<HistoryMenu> getHisMenuByHisReservationID(int id) throws  ResourceNotFoundException{
        return historyMenuRepository.findHistoryMenuByHisReservationID(id);
    }
}
