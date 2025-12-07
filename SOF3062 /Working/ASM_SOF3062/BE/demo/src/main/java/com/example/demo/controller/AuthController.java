package com.example.demo.controller;
import com.example.demo.entity.Account;
import com.example.demo.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/auth")
public class AuthController {
    @Autowired AccountRepository accountRepo;
    @GetMapping("/login")
    public Account login(Principal principal) {
        return accountRepo.findByUsername(principal.getName()).get();
    }
}