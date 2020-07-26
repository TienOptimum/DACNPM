package com.hotelreservation.controller;


import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryReservation;
import com.hotelreservation.model.Reservation;
import com.hotelreservation.model.Room;
import com.hotelreservation.services.HistoryReservationService;
import com.hotelreservation.services.ReservationService;
import com.hotelreservation.services.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class ReservationController {

    @RequestMapping("roomrent")
    private String roomRentRedirect(){
        return "ThueTraPhong/ThueTraPhong-PhongDangThue";
    }


    @RequestMapping("/lounge")
    private String loungeRedirect(){
        return "ThueTraPhong/ThueTraPhong-PhongCho";
    }

    @Autowired
    ReservationService reservationService;

    @Autowired
    RoomService roomService;

    @Autowired
    HistoryReservationService historyReservationService;


    @RequestMapping("/main/reservation")
    public String viewAll(Model model){
        List<Reservation> reservations = reservationService.getReservations();
        List<Room> rooms = roomService.getRooms();
        List<HistoryReservation> historyReservations = historyReservationService.getHistoryReservations();
        model.addAttribute("reservations",reservations);
        model.addAttribute("rooms",rooms);
        model.addAttribute("historyReservations",historyReservations);
        return "DatPhong/DatPhong";
    }


    @PostMapping("/main/reservation/create")
    public String create(@ModelAttribute Reservation reservation, HttpServletRequest request,Model model){
        Timestamp checkIn = new Timestamp(reservation.getCheckInDate().getTime());
        Timestamp checkOut = new Timestamp(reservation.getCheckOutDate().getTime());

        if(historyReservationService.checkRoomAvailable(checkIn,checkOut)){
            reservationService.saveReservation(reservation);

            String[] rooms = request.getParameterValues("selected");

            try {
                if(rooms != null)
                    for (int i = 0 ; i < rooms.length ; i++){
                        HistoryReservation historyReservation = new HistoryReservation();
                        historyReservation.setReservation(reservation);
                        historyReservation.setRoom(roomService.getRoom(Integer.parseInt(rooms[i])));
                        historyReservationService.saveHistoryReservation(historyReservation);
                    }
            }catch (ResourceNotFoundException ex) {

            }
            return "redirect:/main/reservation";
        }
        model.addAttribute("error","Phòng đặt bị trùng lịch, vui lòng chọn lại lịch !");
        return "/main/reservation/create";
    }

    @GetMapping("/main/reservation/update")
    public String showFormForUpdate(@RequestParam("reservationID") int id, Model model) throws ResourceNotFoundException {
        Reservation reservation = reservationService.getReservation(id);
        model.addAttribute("reservationUpdate",reservation);
        List<Room> rooms = roomService.getRooms();
        List<Reservation> reservations = reservationService.getReservations();
        List<HistoryReservation> historyReservations = historyReservationService.getHistoryReservationByReservationID(id);
        model.addAttribute("reservations",reservations);
        model.addAttribute("rooms",rooms);
        model.addAttribute("historys",historyReservations);
        return "DatPhong/ChinhSua-DatPhong";
    }

    @RequestMapping("/main/reservation/delete/room")
    public void deleteRoom(@RequestParam("historyID") int id) throws ResourceNotFoundException{
        historyReservationService.deleteHistoryReservation(id);
    }

}
