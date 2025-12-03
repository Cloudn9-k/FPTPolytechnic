package com.example.lab7_studentmanage.repository;

import com.example.lab7_studentmanage.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;

public interface IFStudent extends JpaRepository<Student, String> {

}
