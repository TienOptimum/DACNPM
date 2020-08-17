package com.hotelreservation.repositories;

import com.hotelreservation.model.Menu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MenuRepository extends JpaRepository<Menu,Integer> {

    @Query(nativeQuery = true,
            value = "select * " +
                    "from menu " +
                    "where menu.name =:name ")
    List<Menu> checkMenuAvailable(@Param("name") String name);
}
