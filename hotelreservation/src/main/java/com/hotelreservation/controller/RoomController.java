package com.hotelreservation.controller;

import com.hotelreservation.entry.RoomParam;
import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.model.Room;
import com.hotelreservation.services.KindOfRoomService;
import com.hotelreservation.services.PaymentMethodService;
import com.hotelreservation.services.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class RoomController {
    @Autowired
    RoomService roomService;
    @Autowired
    KindOfRoomService kindOfRoomService;
    @Autowired
    PaymentMethodService paymentMethodService;

    @RequestMapping("/main/room")
    public String viewAll(Model model, Model model1, Model model2){
        List<Room> rooms = roomService.getRooms();
        model.addAttribute("rooms",rooms);
        List<KindOfRoom> kindOfRooms = kindOfRoomService.getKindOfRooms();
        model1.addAttribute("kindofrooms", kindOfRooms);
        model2.addAttribute("paymentmethods",paymentMethodService.getPaymentMethods());
        return "QLHT/QLHT-Phong";
    }

    @PostMapping("/main/room/create")
    public String create(@ModelAttribute RoomParam roomParam){
        Room room = new Room();
        room.setName(roomParam.name);
        room.setDescription(roomParam.description);

        try {
            room.setKindOfRoom(kindOfRoomService.getKindOfRoom(roomParam.kind_of_room_id));
            room.setPaymentMethod(paymentMethodService.getPaymentMethod(roomParam.payment_method_id));
            room.getRoomStatus().setId(1);
        } catch (ResourceNotFoundException ex) {

        }
        roomService.saveRoom(room);
        return "redirect:/main/room";
    }

    @GetMapping("/main/room/update")
    public String update(@RequestParam("roomID") int id, Model model, Model model1) throws ResourceNotFoundException {
        Room room = roomService.getRoom(id);
        model.addAttribute("room",room);
        List<Room> rooms = roomService.getRooms();
        model1.addAttribute("rooms",rooms);
        return "QLHT/QLHT-ChinhSua-Phong";
    }
}
