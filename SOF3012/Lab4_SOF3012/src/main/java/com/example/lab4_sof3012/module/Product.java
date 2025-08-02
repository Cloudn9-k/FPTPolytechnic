package com.example.lab4_sof3012.module;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;
import java.text.SimpleDateFormat; // Thêm import này

@Getter
@Setter
@Entity
@Table(name = "Product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @Column(name = "price", nullable = false, precision = 10, scale = 2)
    private BigDecimal price;

    @Column(name = "in_stock")
    private Integer inStock;

    @Temporal(TemporalType.TIMESTAMP) // Sử dụng TIMESTAMP cho DATETIME
    @Column(name = "created_at")
    private Date createdAt;
}