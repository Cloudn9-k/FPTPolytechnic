package com.example.lab4_sof3012.module;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.text.SimpleDateFormat; // Thêm import này

@Getter
@Setter
@Entity
@Table(name = "Task")
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "title", nullable = false, length = 200)
    private String title;

    @Column(name = "description", length = 1000) // Kiểu NVARCHAR(1000)
    private String description;

    @Enumerated(EnumType.STRING) // Ánh xạ Enum sang String trong DB
    @Column(name = "status", nullable = false, length = 20)
    private TaskStatus status; // Sử dụng kiểu Enum bạn vừa tạo

    @Temporal(TemporalType.DATE) // Kiểu DATE
    @Column(name = "due_date")
    private Date dueDate;

}
