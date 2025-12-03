package com.example.lab7_studentmanage.repository;

import com.example.lab7_studentmanage.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, String> {
}
