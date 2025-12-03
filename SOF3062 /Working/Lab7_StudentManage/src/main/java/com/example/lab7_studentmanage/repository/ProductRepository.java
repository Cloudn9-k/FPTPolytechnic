package com.example.lab7_studentmanage.repository;

import com.example.lab7_studentmanage.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}
