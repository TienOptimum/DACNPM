package com.hotelreservation.controller;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.Menu;
import com.hotelreservation.services.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MenuController {
    @Autowired
    MenuService menuService;

    @RequestMapping("/main/menu")
    public String viewAll(Model model){
        List<Menu> menus = menuService.getMenus();
        model.addAttribute("menus",menus);
        return "QLHT/QLHT-Menu";
    }


    @PostMapping("/main/menu/create")
    public String create(@ModelAttribute Menu menu){
        System.out.println(menu.getId());
        menuService.saveMenu(menu);
        return "redirect:/main/menu";
    }

    @GetMapping("/main/menu/update")
    public String showFormForUpdate(@RequestParam("menuID") int id, Model model, Model model1) throws ResourceNotFoundException {
        Menu menu = menuService.getMenu(id);
        model.addAttribute("menuUpdate",menu);
        List<Menu> menus = menuService.getMenus();
        model1.addAttribute("menus",menus);
        return "QLHT/QLHT-Menu";
    }
}
