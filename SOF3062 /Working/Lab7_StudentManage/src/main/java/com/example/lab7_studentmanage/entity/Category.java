package com.example.lab7_studentmanage.entity;
import jakarta.persistence.*;
import lombok.*;
import java.io.Serializable;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Data
@Entity
@Table(name = "Categories")
public class Category implements Serializable {
    @Id
    String id;
    String name;

    @JsonIgnore
    @OneToMany(mappedBy = "category")
    List<Product> products;
}