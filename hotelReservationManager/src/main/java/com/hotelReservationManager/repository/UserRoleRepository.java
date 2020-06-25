package com.hotelReservationManager.repository;

import com.hotelReservationManager.model.Role;
import com.hotelReservationManager.model.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRoleRepository extends JpaRepository<UserRole,Integer> {
    UserRole findByRole(Role role);
}
