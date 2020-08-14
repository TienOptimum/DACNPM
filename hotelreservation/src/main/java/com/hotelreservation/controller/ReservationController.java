package com.hotelreservation.controller;


import com.hotelreservation.entry.BillParam;
import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.HistoryReservation;
import com.hotelreservation.model.Reservation;
import com.hotelreservation.model.Room;
import com.hotelreservation.model.RoomStatus;
import com.hotelreservation.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
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
        List<HistoryReservation> roomRents = historyReservationService.getListHistoryReservationByStatus("R-ON");
        List<Room> roomAvais = roomService.getRoomByRoomStatusID(1);
        List<HistoryReservation> history = historyReservationService.getListHistoryReservationByStatus("OFF");

        model.addAttribute("roomRents", roomRents);
        model.addAttribute("roomAvais",roomAvais);
        model.addAttribute("histories",history);

        return "ThueTraPhong/ThueTraPhong";
    }

    @RequestMapping("/main/reservation")
    public String viewAll(Model model){
        List<Reservation> reservations = reservationService.getReservations();
        List<Room> rooms = roomService.getRooms();
        List<HistoryReservation> historyReservations = historyReservationService.getListHistoryReservationByStatus("ON");
        model.addAttribute("reservations",reservations);
        model.addAttribute("rooms",rooms);
        model.addAttribute("historyReservations",historyReservations);
        return "DatPhong/DatPhong";
    }


    @PostMapping(value="/main/reservation/create")
    public String create(@ModelAttribute Reservation reservation, HttpServletRequest request){
        reservation.getCheckInDate().setHours(14);
        reservation.getCheckInDate().setMinutes(0);
        reservation.getCheckOutDate().setHours(12);
        reservation.getCheckOutDate().setMinutes(0);

        reservationService.saveReservation(reservation);

        try {
            if(listIDRoom != null)
                for (int i = 0 ; i < listIDRoom.size() ; i++){
                    HistoryReservation historyReservation = new HistoryReservation();
                    historyReservation.setReservation(reservation);
                    historyReservation.setRoom(roomService.getRoom(listIDRoom.get(i)));
                    historyReservation.setEarlyCheckIn("N");
                    historyReservation.setStatus("ON");
                    historyReservationService.saveHistoryReservation(historyReservation);
                }
        }catch (ResourceNotFoundException ex) {
        }

        return "redirect:/main/reservation";
    }

    List<Integer> listIDRoom = new ArrayList<>();
    @RequestMapping(value = "/main/reservation/checkedRoom", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public List<Integer> listRoom(@RequestBody List<Integer> listID){
        listIDRoom = listID;
        return listIDRoom;
    }

    @GetMapping("/main/reservation/update")
    public String showFormForUpdate(@RequestParam("reservationID") int id, Model model) throws ResourceNotFoundException {
        return "";
    }

    @RequestMapping("/main/reservation/delete/his")
    @ResponseBody
    public void deleteRoom(@RequestBody Map<String,String> param) throws ResourceNotFoundException{
        historyReservationService.deleteHistoryReservation(Integer.parseInt(param.get("id")));
    }

    @RequestMapping("/main/reservation/start")
    @ResponseBody
    public String checkInRoom(@RequestBody Map<String,String> param) throws ResourceNotFoundException {
        HistoryReservation historyReservation = historyReservationService.getHistoryReservation(Integer.parseInt(param.get("id")));

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

        historyReservation.setStatus("R-ON");
        historyReservation.setEarlyCheckIn(earlyCheckIn);
        // xử lí việc nhận phòng
        historyReservationService.saveHistoryReservation(historyReservation);

        return "redirect:/roomrent";
    }

    @RequestMapping("/roomrent/pay")
    public @ResponseBody BillParam pay(@RequestBody Map<String, String> body) throws ResourceNotFoundException {
        int hisID = Integer.parseInt(body.get("id"));
        HistoryReservation historyReservation = historyReservationService.getHistoryReservation(hisID);
        //thời gian check out lý thuyết
        Date d1 = historyReservation.getReservation().getCheckOutDate();
        System.out.println(d1);
        long checkOutTime = d1.getTime();
        //thời gian check out thực tế
        Date date = new Date();
        historyReservation.getReservation().setCheckOutDate(date);
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

        // tiền trả trước
        double deposits = historyReservation.getReservation().getDeposits();

        if (getDayReservation < 1){
            getDayReservation = 1;
        }

        if (earlyCheckIn.equals("Y")){
            totalPay += getDayReservation * paymentMethod + menuCost + timeBonus * surcharge + 50000 - deposits;
        }else{
            totalPay += getDayReservation * paymentMethod + menuCost + timeBonus * surcharge - deposits;
        }

        RoomStatus roomStatus = roomStatusService.getRoomStatusByID(1);
        historyReservation.getRoom().setRoomStatus(roomStatus);
        historyReservation.setStatus("OFF");
        historyReservation.setCost(totalPay);
        historyReservationService.saveHistoryReservation(historyReservation);

        // xử lí việc hiện thông tin thanh toán
        BillParam billParam = new BillParam();
        billParam.checkInDate = historyReservation.getReservation().getCheckInDate();
        billParam.checkOutDate = historyReservation.getReservation().getCheckOutDate();
        billParam.room_price = paymentMethod * getDayReservation;
        if (timeBonus == 0){
            billParam.surcharge = 0;
        }else{
            billParam.surcharge = surcharge * timeBonus;
        }
        billParam.deposits = deposits;
        billParam.menu_price = menuCost;
        if (earlyCheckIn.equals("Y")){
            billParam.total_cost = billParam.room_price + billParam.surcharge + billParam.menu_price + 50000;
        }else{
            billParam.total_cost = billParam.room_price + billParam.surcharge + billParam.menu_price;
        }
        billParam.total_pay = totalPay;
        return billParam;
    }

    @PostMapping(value = "/main/reservation/room/check", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ResponseEntity<String> checkRoomValid(@RequestBody Map<String, String> body) throws ParseException {
        Date d1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(body.get("checkIn"));
        Timestamp checkInTime = new Timestamp(d1.getTime());

        Date d2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(body.get("checkOut"));
        Timestamp checkOutTime = new Timestamp(d2.getTime());

        String rs = "failed";

        //check phong co trong lich khong
        if (listIDRoom != null) {
            for (int i = 0; i < listIDRoom.size() ; i++){
                if (historyReservationService.checkRoomAvailable(checkInTime, checkOutTime,listIDRoom.get(i))) {
                    rs = "ok";
                } else {
                    rs = "failed";
                    break;
                }
            }
        }
        return ResponseEntity.ok(rs);
    }
}
