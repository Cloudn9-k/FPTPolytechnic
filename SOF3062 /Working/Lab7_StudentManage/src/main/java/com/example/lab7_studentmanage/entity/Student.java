package com.example.lab7_studentmanage.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity // Đánh dấu là Entity
@Table(name = "Students") // Tên bảng trong DB
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
public class Student {
    @Id // Khóa chính
    private String id;
    private String name;
    private Boolean gender;
    private Double mark;
}