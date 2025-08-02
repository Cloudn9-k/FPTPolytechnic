package com.example.tongankhang_th03591_sof3012_asm1.enity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Table(name = "Class")
public class Class {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "class_name")
    private String className;

    @ManyToOne
    @JoinColumn(name = "trainer_id", referencedColumnName = "id")
    private Trainer trainerId;

    @Column(name = "category")
    private String category;

    @Column(name = "schedule_time")
    private LocalDateTime scheduleTime;

    @Column(name = "max_participants")
    private Integer maxParticipants;
}
