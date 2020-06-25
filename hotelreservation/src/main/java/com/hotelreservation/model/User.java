package com.hotelreservation.model;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer id;
    @Column(name="username")
    private String username;
    @Column(name = "password")
    private String password;
}
