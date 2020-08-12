package com.hotelreservation.controller;

import com.hotelreservation.entry.MenuParam;
import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.Menu;
import com.hotelreservation.services.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

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
        menuService.saveMenu(menu);
        return "redirect:/main/menu";
    }

    @RequestMapping("/main/menu/update")
    public @ResponseBody Menu update(@RequestBody MenuParam menuParam) throws ResourceNotFoundException {
        Menu menu = menuService.getMenu(menuParam.id);

        menu.setName(menuParam.name);
        menu.setType(menuParam.type);
        menu.setEntryPrice(menuParam.entryPrice);
        menu.setPrice(menuParam.price);

        menuService.saveMenu(menu);

        return menu;
    }

    @RequestMapping("/main/menu/delete")
    @ResponseBody
    public String update(@RequestBody Map<String,String> param) throws ResourceNotFoundException {
        menuService.deleteMenu(Integer.parseInt(param.get("id")));
        return "ok";
    }
}
