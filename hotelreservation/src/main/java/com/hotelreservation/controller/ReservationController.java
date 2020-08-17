package com.hotelreservation.controller;


import com.hotelreservation.entry.BillParam;
import com.hotelreservation.entry.ReservationParam;
import com.hotelreservation.exception.ResourceNotFoundException;
import com.hotelreservation.model.*;
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

    @Autowired
    HistoryMenuService historyMenuService;

    @Autowired
    MenuService menuService;

    @RequestMapping("/roomrent")
    private String roomRentRedirect(Model model){
        List<HistoryReservation> roomRents = historyReservationService.getListHistoryReservationByStatus("R-ON");
        List<Room> roomAvais = roomService.getRoomByRoomStatusID(1);
        List<HistoryReservation> history = historyReservationService.getListHistoryReservationByStatus("OFF");
        List<Menu> menus = menuService.getMenus();

        model.addAttribute("roomRents", roomRents);
        model.addAttribute("roomAvais",roomAvais);
        model.addAttribute("histories",history);
        model.addAttribute("menus",menus);

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

    //Hàm thêm mới đơn đặt phòng
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

    //Hàm update đơn đặt phòng
    @RequestMapping("/main/reservation/update")
    @ResponseBody
    public HistoryReservation update(@RequestBody Map<String, String> body) throws ResourceNotFoundException, ParseException {
        HistoryReservation historyReservation = historyReservationService.getHistoryReservation(Integer.parseInt(body.get("id")));

        Reservation reservation = reservationService.getReservation(historyReservation.getReservation().getId());

        Date d1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(body.get("checkIn"));
        reservation.setCheckInDate(d1);

        Date d2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(body.get("checkOut"));
        reservation.setCheckOutDate(d2);

        reservation.setCustomerName(body.get("cusName"));
        reservation.setPhone(body.get("phone"));
        reservation.setDeposits(Double.parseDouble(body.get("deposits")));
        reservation.setNote(body.get("note"));

        reservation.getCheckInDate().setHours(14);
        reservation.getCheckInDate().setMinutes(0);
        reservation.getCheckOutDate().setHours(12);
        reservation.getCheckOutDate().setMinutes(0);

        reservationService.saveReservation(reservation);

        try {
            if(listIDRoom != null)
                for (int i = 0 ; i < listIDRoom.size() ; i++){
                    historyReservation.setReservation(reservation);
                    historyReservation.setRoom(roomService.getRoom(listIDRoom.get(i)));
                    historyReservation.setEarlyCheckIn("N");
                    historyReservation.setStatus("ON");
                    historyReservationService.saveHistoryReservation(historyReservation);
                }
        }catch (ResourceNotFoundException ex) {
        }

        return historyReservation;
    }

    //Hàm xử lí danh sách phòng được chọn
    List<Integer> listIDRoom;
    @RequestMapping(value = "/main/reservation/checkedRoom", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public List<Integer> listRoom(@RequestBody List<Integer> listID){
        listIDRoom = new ArrayList<>();
        listIDRoom = listID;
        return listIDRoom;
    }

    //Hàm delete đơn đặt phòng
    @RequestMapping("/main/reservation/delete/his")
    @ResponseBody
    public void deleteRoom(@RequestBody Map<String,String> param) throws ResourceNotFoundException{
        historyReservationService.deleteHistoryReservation(Integer.parseInt(param.get("id")));
    }

    //Hàm check in
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

    //Hàm thanh toán
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
        List<HistoryMenu> historyMenus = historyMenuService.getHisMenuByHisReservationID(hisID);
        for ( int i = 0; i < historyMenus.size(); i++){
            menuCost += historyMenus.get(i).getAmount() * historyMenus.get(i).getMenu().getPrice();
        }

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
        historyReservation.setCost(totalPay+deposits);
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

    //Hàm check list phòng trống khi khách đặt online
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

    //Hàm check phòng trống khi khách tới offline
    @PostMapping(value = "/main/reservation/room/checkOffline", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ResponseEntity<String> checkRoomOffline(@RequestBody Map<String, String> body) throws ParseException, ResourceNotFoundException {
        Date d1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(body.get("checkIn"));
        Timestamp checkInTime = new Timestamp(d1.getTime());

        Date d2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(body.get("checkOut"));
        Timestamp checkOutTime = new Timestamp(d2.getTime());

        Room room = roomService.getRoom(Integer.parseInt(body.get("id")));

        String rs = "failed";

        //check phong co trong lich khong
        if (historyReservationService.checkRoomAvailable(checkInTime, checkOutTime, room.getId())) {
            rs = "ok";
        } else {
            rs = "failed";
        }
        return ResponseEntity.ok(rs);
    }

    //Hàm tạo đặt phòng khi khách tới offline
    @PostMapping(value="/main/reservation/createOffline")
    public @ResponseBody String reservationOffline(@RequestBody ReservationParam reservationOffline) throws ResourceNotFoundException {
        Reservation reservation = new Reservation();

        reservation.setCustomerName(reservationOffline.nameCus);
        reservation.setPhone(reservationOffline.phone);
        reservation.setCheckInDate(reservationOffline.check_in_date);
        reservation.setCheckOutDate(reservationOffline.check_out_date);
        reservation.setDeposits(reservationOffline.tien_tra_truoc);

        Date date = new Date();
        reservation.getCheckInDate().setHours(date.getHours());
        reservation.getCheckInDate().setMinutes(date.getMinutes());

        reservation.getCheckOutDate().setHours(12);
        reservation.getCheckOutDate().setMinutes(0);

        reservationService.saveReservation(reservation);

        RoomStatus roomStatus = roomStatusService.getRoomStatusByID(2);

        try {
            HistoryReservation historyReservation = new HistoryReservation();
            historyReservation.setReservation(reservation);
            historyReservation.setRoom(roomService.getRoom(reservationOffline.room_id));
            historyReservation.getRoom().setRoomStatus(roomStatus);
            if(historyReservation.getReservation().getCheckInDate().getHours() > 14){
                historyReservation.setEarlyCheckIn("Y");
            }else{
                historyReservation.setEarlyCheckIn("N");
            }
            historyReservation.setStatus("R-ON");
            historyReservationService.saveHistoryReservation(historyReservation);
        }catch (ResourceNotFoundException ex) {

        }
        return "ok";
    }

    @RequestMapping("/main/reservation/addMenu")
    @ResponseBody
    public String addMenu(@RequestBody Map<String, String> body) throws ResourceNotFoundException{
        HistoryMenu historyMenu = new HistoryMenu();

        historyMenu.setHistoryReservation(historyReservationService.getHistoryReservation(Integer.parseInt(body.get("id"))));
        historyMenu.setMenu(menuService.getMenu(Integer.parseInt(body.get("menu_id"))));

        int amount = 0;
        if (!body.get("amount").equals("") || body.get("amount") != null || Integer.parseInt(body.get("amount")) > 0){
            amount = Integer.parseInt(body.get("amount"));
        }
        historyMenu.setAmount(amount);

        historyMenuService.saveHistoryMenu(historyMenu);

        return "ok";
    }
}
