package com.example.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "Books")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "Title", nullable = false)
    private String title;

    @Column(name = "Author", nullable = false)
    private String author;

    @Column(name = "Quantity", nullable = false)
    private Integer quantity;
}