package com.example.tongankhang_th03591_sof3012_asm1.enity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
@Entity
@Getter @Setter
@Table(name = "Gym_Member")
public class Gym_Member {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name ="member_code", unique = true, nullable = false    )
    private String memberCode;

    @Column(name = "full_name")
    private String fullName;

    @Column(name = "email")
    private String email;

    @Column(name = "phone")
    private String phone;

    @Column(name = "dob")
    private LocalDate dob;

    @Column(name = "join_date")
    private LocalDate joinDate;

    @Column(name = "status")
    private String status;
}
