package com.hotelreservation.controller;

import com.hotelreservation.entry.KindOfRoomParam;
import com.hotelreservation.entry.RoomParam;
import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.model.Room;
import com.hotelreservation.model.RoomStatus;
import com.hotelreservation.services.KindOfRoomService;
import com.hotelreservation.services.PaymentMethodService;
import com.hotelreservation.services.RoomService;
import com.hotelreservation.services.RoomStatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class RoomController {
    @Autowired
    RoomService roomService;
    @Autowired
    KindOfRoomService kindOfRoomService;
    @Autowired
    PaymentMethodService paymentMethodService;
    @Autowired
    RoomStatusService roomStatusService;

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
    public String create(@ModelAttribute RoomParam roomParam) throws ResourceNotFoundException {
        Room room = new Room();
        room.setName(roomParam.name);
        room.setDescription(roomParam.description);

        RoomStatus roomStatus = roomStatusService.getRoomStatusByID(1);

        try {
            room.setKindOfRoom(kindOfRoomService.getKindOfRoom(roomParam.kind_of_room_id));
            room.setPaymentMethod(paymentMethodService.getPaymentMethod(roomParam.payment_method_id));
            room.setRoomStatus(roomStatus);
        } catch (ResourceNotFoundException ex) {

        }
        roomService.saveRoom(room);
        return "redirect:/main/room";
    }

    @RequestMapping("/main/room/update")
    public @ResponseBody Room update(@RequestBody RoomParam roomParam) throws ResourceNotFoundException {
       Room room = roomService.getRoom(roomParam.id);

       room.setName(roomParam.name);
       room.setKindOfRoom(kindOfRoomService.getKindOfRoom(roomParam.kind_of_room_id));
       room.setPaymentMethod(paymentMethodService.getPaymentMethod(roomParam.payment_method_id));
       room.setDescription(roomParam.description);

       roomService.saveRoom(room);
       return room;
    }

    @RequestMapping("/main/room/delete")
    @ResponseBody
    public String update(@RequestBody Map<String,String> param) throws ResourceNotFoundException {
        roomService.deleteRoom(Integer.parseInt(param.get("id")));
        return "ok";
    }
}
