package com.example.helloworldsof3012;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "Task")
@Getter
@Setter
public class Task {
//    id INT PRIMARY KEY IDENTITY(1,1),
//    title NVARCHAR(200) NOT NULL,
//    description NVARCHAR(1000),
//    status NVARCHAR(20) NOT NULL CHECK (status IN ('PENDING', 'IN_PROGRESS', 'COMPLETED')),
//    due_date DATE
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "id")
private Integer idTask;
    @Column(name = "title")
    private String title;
    @Column(name = "description")
    private String desc;
    @Column(name = "status")
    private String status;
    @Column(name = "due_date")
    private Date due_date; // Sử dụng java.sql.Date
}
