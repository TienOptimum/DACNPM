package com.hotelreservation.services;

import com.hotelreservation.model.User;
import com.hotelreservation.repositories.RoleRepository;
import com.hotelreservation.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<>(roleRepository.findAll()));
        userRepository.save(user);
    }



    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public boolean checkIfValidOldPassword(User user, String oldPassword) {
        User user1 = userRepository.getOldPassword(user.getUsername());
        return bCryptPasswordEncoder.matches(oldPassword,user1.getPassword());
    }

    @Override
    public void changeUserPassword(User user, String password) {
        user.setPassword(bCryptPasswordEncoder.encode(password));
        userRepository.save(user);
    }
}

