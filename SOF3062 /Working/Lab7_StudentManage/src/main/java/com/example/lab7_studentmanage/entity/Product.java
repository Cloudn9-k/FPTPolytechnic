package com.example.lab7_studentmanage.entity;
import jakarta.persistence.*;
import lombok.*;
import java.util.Date;

@Data
@Entity
@Table(name = "Products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String name;
    Double price;

    @Temporal(TemporalType.DATE)
    @Column(name = "create_date")
    Date createDate = new Date();

    @ManyToOne
    @JoinColumn(name = "category_id")
    Category category;
}