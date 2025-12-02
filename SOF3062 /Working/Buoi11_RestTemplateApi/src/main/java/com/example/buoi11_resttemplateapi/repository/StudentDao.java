package com.example.buoi11_resttemplateapi.repository;


import com.example.buoi11_resttemplateapi.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

// Kế thừa JpaRepository để có sẵn hàm CRUD
public interface StudentDao extends JpaRepository<Student, String> {
}