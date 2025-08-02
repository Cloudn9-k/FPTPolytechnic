package com.example.helloworldsof3012;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "EmployeeDetails")
@Getter
@Setter
public class EmployeeDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "employee_id")
    private Integer id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "email", unique = true)
    private String email;

    @Column(name = "phone")
    private String phone;

    @Column(name = "hire_date")
    private Date hireDate; // Sử dụng java.sql.Date

    @Column(name = "position")
    private String position;

    @Column(name = "salary")
    private BigDecimal salary;

    @Column(name = "department")
    private String department;

    @Column(name = "manager_id")
    private Integer managerId; // Có thể null

    @Column(name = "birth_date")
    private Date birthDate; // Sử dụng java.sql.Date

    @Column(name = "address")
    private String address;
}
