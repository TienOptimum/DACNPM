package com.hotelreservation.controller;

import com.hotelreservation.model.User;
import com.hotelreservation.services.SecurityService;
import com.hotelreservation.services.UserService;
import com.hotelreservation.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "DangNhapDangKy/Register1";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "DangNhapDangKy/Register1";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "DangNhapDangKy/Login1";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "DangNhapDangKy/Login1";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "QLHT/QuanLyHeThong";
    }

    @RequestMapping("user")
    private String systemRedirect(){
        return "TaiKhoan/TaiKhoan";
    }

    @RequestMapping("/user/changePassword")
    private String changePassword(){
        return "TaiKhoan/TaiKhoan-DoiMatKhau";
    }

//    @PostMapping("/user/changePassword")
//    public String updatePass(@ModelAttribute String password) {
//        User user = userService.findByUsername(
//                SecurityContextHolder.getContext().getAuthentication().getName());
//        userService.changeUserPassword(user,password);
//        return "DangNhapDangKy/Login";
//    }

    @PostMapping(value = "/user/changePassword", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ResponseEntity<String> checkOldPassValid(@RequestBody Map<String, String> body) throws ParseException {
        String oldPassword = body.get("oldpassword");
        String password = body.get("password");
        String rs = "failed";

        User user = userService.findByUsername(
                SecurityContextHolder.getContext().getAuthentication().getName());
        //check pass co dung khong
        if (userService.checkIfValidOldPassword(user,oldPassword)) {
            userService.changeUserPassword(user,password);
            rs = "Đổi mật khẩu thành công";
        } else {
            rs = "Mật khẩu cũ không đúng";
        }

        return ResponseEntity.ok(rs);
    }
}

