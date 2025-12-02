package com.example.buoi11_resttemplateapi.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "J6Students") // [cite: 288]
public class Student {
    @Id
    private String id;      // [cite: 328]
    private String name;    // [cite: 329]
    private Double mark;    // [cite: 331]
    private Boolean gender; // [cite: 330]
}