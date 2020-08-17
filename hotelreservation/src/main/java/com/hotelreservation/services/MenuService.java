package com.hotelreservation.services;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.Menu;

import java.util.List;

public interface MenuService {
    public List<Menu> getMenus();
    public void saveMenu(Menu menu);
    public Menu getMenu(int id) throws ResourceNotFoundException;
    public void deleteMenu(int id) throws ResourceNotFoundException;
    public boolean checkMenuAvailable(String name);

}
