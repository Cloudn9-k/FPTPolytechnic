package com.example.helloworldsof3012;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "SimpleUser")
@Getter
@Setter
public class SimpleUser {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id_user;
    @Column(name = "username")
    private String userName;

    @Column(name = "email", unique = true)
    private String email;
}
