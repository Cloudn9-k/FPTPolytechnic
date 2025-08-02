package com.example.buoi4_sof3012.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "EmployeeDetails")
public class NhanVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "employee_id")
    private Integer id;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "email")
    private String email;
    @Column(name = "phone")
    private String phone;
    @Column(name = "hire_date")
    private Date hireDate;
    @Column(name = "position")
    private String position;
    @Column(name = "salary")
    private BigDecimal salary;
    @Column(name = "department")
    private String department;
    @Column(name = "manager_id")
    private Integer managerId;
    @Column(name = "birth_date")
    private Date birthDate;
    @Column(name = "address")
    private String address;

}
