package com.hotelreservation.controller;

import com.hotelreservation.entry.KindOfRoomParam;
import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.repositories.KindOfRoomRepository;
import com.hotelreservation.services.KindOfRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;


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

    @RequestMapping("/main/kindofroom/update")
    public @ResponseBody  KindOfRoom showFormForUpdate(@RequestBody KindOfRoomParam kindOfRoom) throws ResourceNotFoundException{
        KindOfRoom kind = kindOfRoomService.getKindOfRoom(kindOfRoom.id);

        kind.setName(kindOfRoom.name);
        kind.setDescription(kindOfRoom.description);

        kindOfRoomService.saveKindOfRoom(kind);

        return kind;
    }

    @RequestMapping("/main/kindofroom/delete")
    @ResponseBody
    public String update(@RequestBody Map<String,String> param) throws ResourceNotFoundException {
        kindOfRoomService.deleteKindOfRoom(Integer.parseInt(param.get("id")));
        return "ok";
    }


    @PostMapping(value = "/main/kindofroom/check", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ResponseEntity<String> checkRoomValid(@RequestBody Map<String, String> body) throws ParseException {
        String name =  body.get("name");
        String rs = "failed";

        //check loai phong co ton tai
                if (kindOfRoomService.checkKindOfRoomAvailable(name)) {
                    rs = "ok";
                } else {
                    rs = "failed";
                }

        return ResponseEntity.ok(rs);
    }
}
