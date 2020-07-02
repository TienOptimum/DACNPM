package com.hotelreservation.controller;

import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.repositories.KindOfRoomRepository;
import com.hotelreservation.services.KindOfRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class KindOfRoomController {
    @Autowired
    KindOfRoomService kindOfRoomService;

    @RequestMapping("/main/kindofroom")
    public String viewAll(Model model){
        List<KindOfRoom> kindOfRooms = kindOfRoomService.getKindOfRooms();
        model.addAttribute("kindofrooms",kindOfRooms);
        return "QLHT/QLHT-LoaiPhong";
    }

    @PostMapping("/main/kindofroom/create")
    public String create(@ModelAttribute KindOfRoom kindOfRoom){
        kindOfRoomService.saveKindOfRoom(kindOfRoom);
        return "redirect:/main/kindofroom";
    }

    @GetMapping("/main/kindofroom/update")
    public String showFormForUpdate(@RequestParam("kindofroomID") int id, Model model, Model model1) throws ResourceNotFoundException{
        KindOfRoom kindOfRoom = kindOfRoomService.getKindOfRoom(id);
        model.addAttribute("kindofroomUpdate",kindOfRoom);
        List<KindOfRoom> kindOfRooms = kindOfRoomService.getKindOfRooms();
        model1.addAttribute("kindofrooms",kindOfRooms);
        return "QLHT/QLHT-ChinhSua-LoaiPhong";
    }

}
