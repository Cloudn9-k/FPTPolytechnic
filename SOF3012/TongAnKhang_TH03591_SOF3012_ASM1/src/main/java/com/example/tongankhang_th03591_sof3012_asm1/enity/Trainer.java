package com.example.tongankhang_th03591_sof3012_asm1.enity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "Trainer")
public class Trainer {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private Integer id;

        @Column(name = "full_name")
        private String fullName;

        @Column(name = "specialty")
        private String specialty;

        @Column(name = "phone")
        private String phone;

        @Column(name = "email")
        private String email;
}
