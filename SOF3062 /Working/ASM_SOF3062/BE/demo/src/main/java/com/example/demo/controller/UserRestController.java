package com.example.demo.controller;
import com.example.demo.entity.Account;
import com.example.demo.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.security.Principal;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/user")
public class UserRestController {
    @Autowired
    AccountRepository accountRepo;

    // Lấy thông tin cá nhân
    @GetMapping("/profile")
    public Account getProfile(Principal principal) {
        return accountRepo.findByUsername(principal.getName()).get();
    }

    // Cập nhật thông tin (Họ tên, Email, Ảnh)
    @PutMapping("/profile")
    public Account updateProfile(@RequestBody Account form, Principal principal) {
        Account acc = accountRepo.findByUsername(principal.getName()).get();
        acc.setFullname(form.getFullname());
        acc.setEmail(form.getEmail());
        acc.setPhoto(form.getPhoto());
        return accountRepo.save(acc);
    }
    @PutMapping("/change-password")
    public void changePassword(@RequestBody String newPassword, Principal principal) {
        Account acc = accountRepo.findByUsername(principal.getName()).get();
        acc.setPassword("{noop}" + newPassword);
        accountRepo.save(acc);
    }
}
