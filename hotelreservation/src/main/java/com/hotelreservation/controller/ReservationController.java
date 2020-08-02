package com.hotelreservation.controller;


import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryReservation;
import com.hotelreservation.model.Reservation;
import com.hotelreservation.model.Room;
import com.hotelreservation.services.HistoryReservationService;
import com.hotelreservation.services.PaymentMethodService;
import com.hotelreservation.services.ReservationService;
import com.hotelreservation.services.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class ReservationController {
    @Autowired
    ReservationService reservationService;

    @Autowired
    RoomService roomService;

    @Autowired
    HistoryReservationService historyReservationService;

    @Autowired
    PaymentMethodService paymentMethodService;

    @RequestMapping("roomrent")
    private String roomRentRedirect(){
        return "ThueTraPhong/ThueTraPhong-PhongDangThue";
    }


    @RequestMapping("/lounge")
    private String loungeRedirect(){
        return "ThueTraPhong/ThueTraPhong-PhongCho";
    }

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
    public String create(@ModelAttribute Reservation reservation, HttpServletRequest request){
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
    @ResponseBody
    public void deleteRoom(@RequestParam("historyID") int id) throws ResourceNotFoundException{
        historyReservationService.deleteHistoryReservation(id);
    }

    @RequestMapping("main/reservation/start")
    public String checkInRoom(@RequestParam("historyReservationID") int id) throws ResourceNotFoundException {
        HistoryReservation historyReservation = historyReservationService.getHistoryReservation(id);

        // thời gian check in thực tế
        Date date = new Date();
        long realTimeCheckIn = date.getTime();
        historyReservation.getReservation().setCheckInDate(date);

        // thời gian check in lý thuyết
        long checkInTime = historyReservation.getRoom().getPaymentMethod().getCheckInTime().getTime();

        boolean earlyCheckIn = false;

        String status = "";

        // kiểm tra thời gian check in
        if (realTimeCheckIn < checkInTime){
            // set việc nhận phòng sớm
            earlyCheckIn = true;
            status = "Đã nhận phòng";
        }

        // xử lí việc nhận phòng
        historyReservationService.saveHistoryReservation(historyReservation);

        return "redirect:/main/reservation";
    }

    @RequestMapping("main/louge/pay")
    public void pay(){
        //thời gian check out lý thuyết
        int checkOutTime = 0;
        //thời gian check out thực tế
        int realCheckOut = 0;
        // tiền menu
        int menuCost = 0;
        // tổng tiền cần thanh toán
        int totalPay = 0;
        // lấy ra số ngày đặt phòng
        int getDayReservation = 0;
        //lấy ra giá phòng
        int paymentMethod = 0;
        // lấy ra giá phụ thu
        int surcharge = 0;
        // lấy ra danh sách menu đã sử dụng của phòng
        ArrayList<Integer> menu = new ArrayList();

        for (int i = 0; i < menu.size() ; i++){
            menuCost += menu.get(i);
        }

        int timeBonus=0;
        // kiểm tra thời gian check Out
        if (realCheckOut > checkOutTime) {
            timeBonus = realCheckOut - checkOutTime;
        }
        // kiểm tra việc checkin Sớm
        boolean earlyCheckIn = true;

        if (earlyCheckIn){
            totalPay += getDayReservation * paymentMethod + menuCost + timeBonus * surcharge + 50000;
        }

        // xử lí việc hiện thông tin thanh toán
    }

    //
    @PostMapping(value = "/main/reservation/room/check", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ResponseEntity<String> checkRoomValid(@RequestBody Map<String, String> body) throws ParseException {
        // dung` ajax goi toi cai /main/reservation/room/check
        //check cai phong co ok khong
        Date d1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(body.get("checkIn"));
        Timestamp checkInTime = new Timestamp(d1.getTime());

        Date d2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(body.get("checkOut"));
        Timestamp checkOutTime = new Timestamp(d2.getTime());

        if(historyReservationService.checkRoomAvailable(checkInTime,checkOutTime)){
            return ResponseEntity.ok("ok");
        }else{
            return ResponseEntity.ok("failed");
        }
    }
}
