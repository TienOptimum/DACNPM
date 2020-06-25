package com.hotelReservationManager.controller;

import com.hotelReservationManager.business.UserBusiness;
import com.hotelReservationManager.entry.user.LoginParams;
import com.hotelReservationManager.model.response.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserBusiness userBusiness;

    @PostMapping("/login")
    public ApiResponse login(@RequestBody LoginParams loginParams){
        Object loginResult = userBusiness.login(loginParams);
        if(loginParams == null){
            return ApiResponse.OnBadRequest("Username or password is incorrect!");
        }
        return ApiResponse.OnSuccess(loginResult, "Login success!");
    }


}
