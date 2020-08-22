package com.hotelreservation.repositories;

import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
    User findByUsername(String username);

    @Query(nativeQuery = true,
            value = "select * " +
                    "from user " +
                    "where user.username =:name ")
    User getOldPassword(@Param("name") String name);

    @Query(nativeQuery = true,
            value = "update user " +
                    "set user.password =:password " +
                    "where user.username =:name ")
    int updatePassword(@Param("name") String name,@Param("password") String password);
}

