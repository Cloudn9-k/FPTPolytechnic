package com.example.lab4_sof3012.module;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.text.SimpleDateFormat;
@Getter
@Setter
@Entity
@Table(name = "Contact")
public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "full_name", nullable = false, length = 100)
    private String fullName;

    @Column(name = "email", nullable = false, length = 100)
    private String email;

    @Temporal(TemporalType.DATE) // Sử dụng @Temporal cho kiểu DATE
    @Column(name = "birth_date")
    private Date birthDate;
}