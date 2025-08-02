package com.example.lab3_2.module;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="Cupcake")
public class Cupcake {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="CupcakeID")
    private int cupcakeID;

    @Column(name="Flavor", nullable = false, length =50)
    private String flavor;
    @Column(name="Frosting",length=50)
    private String frosting;
    @Column(name="Price",nullable = false, precision = 5, scale =2)
    private BigDecimal price;
    @Column(name = "IsGlutenFree", nullable = false)
    private Boolean isGlutenFree;
    @Column(name = "BakedOn")
    private LocalDate bakedOn;

}
