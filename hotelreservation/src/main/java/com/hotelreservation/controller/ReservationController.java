package com.hotelreservation.controller;


import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryReservation;
import com.hotelreservation.model.Reservation;
import com.hotelreservation.model.Room;
import com.hotelreservation.model.RoomStatus;
import com.hotelreservation.repositories.RoomStatusRepository;
import com.hotelreservation.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

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

    @Autowired
    RoomStatusService roomStatusService;

    @RequestMapping("/roomrent")
    private String roomRentRedirect(Model model){
        List<HistoryReservation> roomRents = historyReservationService.getHistoryReservationByRoomRoomStatus(2);
        List<Room> roomAvais = roomService.getRoomByRoomStatusID(1);

        model.addAttribute("roomRents", roomRents);
        model.addAttribute("roomAvais",roomAvais);

        return "ThueTraPhong/ThueTraPhong";
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
                        historyReservation.setEarlyCheckIn("N");
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

    @RequestMapping("/main/reservation/start")
    public String checkInRoom(@RequestParam("historyReservationID") int id) throws ResourceNotFoundException {
        HistoryReservation historyReservation = historyReservationService.getHistoryReservation(id);

        // thời gian check in thực tế
        Date date = new Date();
        historyReservation.getReservation().setCheckInDate(date);
        Date realCheckIn = historyReservation.getReservation().getCheckInDate();

        // thời gian check in lý thuyết
        Date checkInTime = historyReservation.getRoom().getPaymentMethod().getCheckInTime();

        String earlyCheckIn = historyReservation.getEarlyCheckIn();

        RoomStatus roomStatus = roomStatusService.getRoomStatusByID(2);

        // kiểm tra thời gian check in
        if (realCheckIn.getHours() < checkInTime.getHours()){
            // set việc nhận phòng sớm
            earlyCheckIn = "Y";
            historyReservation.getRoom().setRoomStatus(roomStatus);
        }else{
            historyReservation.getRoom().setRoomStatus(roomStatus);
        }

        historyReservation.setEarlyCheckIn(earlyCheckIn);
        // xử lí việc nhận phòng
        historyReservationService.saveHistoryReservation(historyReservation);

        return "redirect:/roomrent";
    }

    @RequestMapping("/main/louge/pay")
    public void pay(@RequestParam("historyReservationID") int id) throws ResourceNotFoundException {
        HistoryReservation historyReservation = historyReservationService.getHistoryReservation(id);
        //thời gian check out lý thuyết
        Date d1 = historyReservation.getReservation().getCheckOutDate();
        long checkOutTime = d1.getTime();
        //thời gian check out thực tế
        Date date = new Date();
        long realCheckOut = date.getTime();
        // tiền menu
        double menuCost = 0;
        // tổng tiền cần thanh toán
        double totalPay = 0;
        // lấy ra số ngày đặt phòng
        long day = realCheckOut - historyReservation.getReservation().getCheckInDate().getTime();
        long getDayReservation = TimeUnit.MILLISECONDS.toDays(day);
        //lấy ra giá phòng
        double paymentMethod = historyReservation.getRoom().getPaymentMethod().getPrice();
        // lấy ra giá phụ thu
        double surcharge = historyReservation.getRoom().getPaymentMethod().getSurcharge();
        // lấy ra danh sách menu đã sử dụng của phòng
//        ArrayList<Integer> menu = new ArrayList();
//
//        for (int i = 0; i < menu.size() ; i++){
//            menuCost += menu.get(i);
//        }

        long diffTimeBonus = realCheckOut - checkOutTime;
        long timeBonus = 0;
        // kiểm tra thời gian check Out
        if (d1.before(date)) {
            timeBonus = TimeUnit.MILLISECONDS.toHours(diffTimeBonus);
        }
        // kiểm tra việc checkin Sớm
        String earlyCheckIn = historyReservation.getEarlyCheckIn();

        if (earlyCheckIn.equals("Y")){
            totalPay += getDayReservation * paymentMethod + menuCost + timeBonus * surcharge + 50000;
        }else{
            totalPay += getDayReservation * paymentMethod + menuCost + timeBonus * surcharge;
        }

        historyReservation.setCost(totalPay);
        historyReservationService.saveHistoryReservation(historyReservation);
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
