package com.example.demo.controller;

import com.example.demo.entity.Account;
import com.example.demo.entity.Order;
import com.example.demo.repository.AccountRepository;
import com.example.demo.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/admin")
public class AdminRestController {

    @Autowired
    AccountRepository accountRepo;
    @Autowired
    OrderRepository orderRepo;

    // --- QUẢN LÝ KHÁCH HÀNG (Yêu cầu 1.2) ---
    @GetMapping("/accounts")
    public List<Account> getAllAccounts() {
        return accountRepo.findAll();
    }

    // API kích hoạt/vô hiệu hóa tài khoản
    @PutMapping("/accounts/{id}/status")
    public Account toggleStatus(@PathVariable Long id, @RequestBody Boolean status) {
        Account acc = accountRepo.findById(id).orElseThrow();
        acc.setActivated(status);
        return accountRepo.save(acc);
    }

    // --- QUẢN LÝ ĐƠN HÀNG (Yêu cầu 1.2) ---
    @GetMapping("/orders")
    public List<Order> getAllOrders() {
        // Nên sắp xếp đơn mới nhất lên đầu
        return orderRepo.findAll();
    }

    // API cập nhật trạng thái đơn (Pending -> Shipping -> Delivered -> Cancelled)
    @PutMapping("/orders/{id}/status")
    public Order updateOrderStatus(@PathVariable Long id, @RequestBody String status) {
        Order order = orderRepo.findById(id).orElseThrow();
        order.setStatus(status);
        return orderRepo.save(order);
    }
}
