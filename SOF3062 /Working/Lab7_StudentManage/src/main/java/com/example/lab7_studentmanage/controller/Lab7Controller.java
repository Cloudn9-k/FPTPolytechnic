package com.example.lab7_studentmanage.controller;

import com.example.lab7_studentmanage.entity.*;
import com.example.lab7_studentmanage.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/api")
public class Lab7Controller {
    @Autowired CategoryRepository categoryRepo;
    @Autowired ProductRepository productRepo;
    @Autowired AccountRepository accountRepo;

    // --- CATEGORY API ---
    @GetMapping("/categories")
    public List<Category> getAllCategories() { return categoryRepo.findAll(); }

    // --- PRODUCT API ---
    @GetMapping("/products")
    public List<Product> getAllProducts() { return productRepo.findAll(); }

    @PostMapping("/products")
    public Product createProduct(@RequestBody Product p) { return productRepo.save(p); }

    @PutMapping("/products/{id}")
    public Product updateProduct(@PathVariable Integer id, @RequestBody Product p) { return productRepo.save(p); }

    @DeleteMapping("/products/{id}")
    public void deleteProduct(@PathVariable Integer id) { productRepo.deleteById(id); }

    // --- ACCOUNT API ---
    @GetMapping("/accounts")
    public List<Account> getAllAccounts() { return accountRepo.findAll(); }

    @PostMapping("/accounts")
    public Account createAccount(@RequestBody Account a) { return accountRepo.save(a); }

    @PutMapping("/accounts/{username}")
    public Account updateAccount(@RequestBody Account a) { return accountRepo.save(a); }

    @DeleteMapping("/accounts/{username}")
    public void deleteAccount(@PathVariable String username) { accountRepo.deleteById(username); }
}