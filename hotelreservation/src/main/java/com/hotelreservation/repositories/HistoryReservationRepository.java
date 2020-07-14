package com.hotelreservation.repositories;

import com.hotelreservation.model.HistoryReservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HistoryReservationRepository extends JpaRepository<HistoryReservation, Integer> {
}
