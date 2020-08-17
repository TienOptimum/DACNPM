package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.model.Menu;
import com.hotelreservation.repositories.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService{

    @Autowired
    private MenuRepository menuRepository;

    @Override
    @Transactional
    public List<Menu> getMenus() {
        return menuRepository.findAll();
    }

    @Override
    @Transactional
    public void saveMenu(Menu menu) {
        menuRepository.save(menu);
    }

    @Override
    public Menu getMenu(int id) throws ResourceNotFoundException {
        return menuRepository.findById(id).orElseThrow(
                ()-> new ResourceNotFoundException(id));
    }

    @Override
    public void deleteMenu(int id) {
        menuRepository.deleteById(id);
    }

    @Override
    public boolean checkMenuAvailable(String name) {
        List<Menu> Menus = menuRepository.checkMenuAvailable(name);

        if (Menus.size() == 0){
            return true;
        }
        return false;
    }
}
