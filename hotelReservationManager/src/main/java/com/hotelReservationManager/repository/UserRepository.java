package com.hotelReservationManager.repository;

import com.hotelReservationManager.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Integer> {
    User findByUserName(String userName);
    boolean existsByUserName(String userName);
}
