package com.example.module;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name="StudentAttendance")
public class StudentAttendance {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AttendanceID")
    private Integer id;
    @Column(name="StudentName")
    private String studentName;
    @Column(name="ClassDate")
    private Date classDate;
    @Column(name = "Status")
    private String status;
}
