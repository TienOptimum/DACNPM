package com.hotelReservationManager.business;

import com.hotelReservationManager.entry.user.LoginParams;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserBusiness extends UserDetailsService {
    String login(LoginParams loginParams);
    boolean checkExistUsername(String username);
    User getUserById(int id);
    void saveUser(User user);
}
