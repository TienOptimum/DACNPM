package com.hotelreservation.repositories;

import com.hotelreservation.model.Menu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface MenuRepository extends JpaRepository<Menu,Integer> {

    @Query(nativeQuery = true,
            value = "select * " +
                    "from menu " +
                    "where menu.name =:name ")
    List<Menu> checkMenuAvailable(@Param("name") String name);
}
