package com.example.tongankhang_th03591_sof3012_asm1.enity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Getter
@Setter
@Table(name = "Class_Registration")
public class Class_Registration {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id")
    private Gym_Member member;

    @ManyToOne
    @JoinColumn(name = "class_id", referencedColumnName = "id")
    private Class classObj;

    @Column(name = "register_date")
    private LocalDate registerDate;

    @Column(name = "attendance_status")
    private String attendanceStatus;
}
