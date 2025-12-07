package com.example.demo.controller;

import com.example.demo.entity.Product;
import com.example.demo.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*") // Quan trọng: Để Vue gọi được mà không bị chặn CORS
@RestController
@RequestMapping("/rest/products")
public class ProductRestController {

    @Autowired
    ProductRepository productRepo;
    @GetMapping
    public List<Product> getAll() {
        return productRepo.findAll();
    }
    @GetMapping("/{id}")
    public Product getOne(@PathVariable("id") Integer id) {
        return productRepo.findById(id).orElse(null);
    }
}