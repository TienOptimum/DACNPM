package com.hotelreservation.controller;


import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.Reservation;
import com.hotelreservation.services.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping("/main/reservation")
    public String viewAll(Model model){
        List<Reservation> reservations = reservationService.getReservations();
        model.addAttribute("reservations",reservations);
        return "DatPhong/DatPhong";
    }


    @PostMapping("/main/reservation/create")
    public String create(@ModelAttribute Reservation reservation){
        reservationService.saveReservation(reservation);
        return "redirect:/main/reservation";
    }

    @GetMapping("/main/reservation/update")
    public String showFormForUpdate(@RequestParam("reservationID") int id, Model model, Model model1) throws ResourceNotFoundException {
        Reservation reservation = reservationService.getReservation(id);
        model.addAttribute("reservationUpdate",reservation);
        List<Reservation> reservations = reservationService.getReservations();
        model1.addAttribute("reservations",reservation);
        return "DatPhong/DatPhong";
    }



}
