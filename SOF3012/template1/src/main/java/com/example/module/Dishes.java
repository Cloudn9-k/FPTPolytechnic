package com.example.module;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "Dishes")
@NoArgsConstructor
@AllArgsConstructor
public class Dishes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "name")
    private String name;
    @Column(name = "calories")
    private Integer calories;
    @Column(name = "is_vegan")
    private Boolean isVegan;
    @Column(name = "description")
    private String description;

}
