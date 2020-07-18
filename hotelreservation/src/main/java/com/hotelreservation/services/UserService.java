package com.hotelreservation.services;

import com.hotelreservation.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}