package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "order_details")
public class OrderDetail implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @ManyToOne
    @JoinColumn(name = "product_id")
    Product product;
    @ManyToOne
    @JoinColumn(name = "order_id")
    Order order;
    Double price;
    Integer quantity;
}