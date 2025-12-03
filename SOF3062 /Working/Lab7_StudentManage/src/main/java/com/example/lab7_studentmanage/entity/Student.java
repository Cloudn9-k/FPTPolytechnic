package com.example.lab7_studentmanage.entity;


import lombok.*;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Student {
    private String id;
    private String name;
    private Boolean gender;
    private Double mark;
}
