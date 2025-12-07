package com.example.demo.controller;
import com.example.demo.dto.OrderDTO;
import com.example.demo.entity.Account;
import com.example.demo.entity.Order;
import com.example.demo.entity.OrderDetail;
import com.example.demo.repository.AccountRepository;
import com.example.demo.repository.OrderDetailRepository;
import com.example.demo.repository.OrderRepository;
import com.example.demo.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.Date;
import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orders")
public class OrderRestController {
    @Autowired
    OrderRepository orderRepo;
    @Autowired
    OrderDetailRepository orderDetailRepo;
    @Autowired
    AccountRepository accountRepo;
    @Autowired
    ProductRepository productRepo;

    // 1. ĐẶT HÀNG (User)
    @PostMapping
    public Order create(@RequestBody OrderDTO orderDTO, Principal principal) {
        String username = principal.getName();
        Account user = accountRepo.findByUsername(username).orElseThrow();
        Order order = new Order();
        order.setAccount(user);
        order.setAddress(orderDTO.getAddress());
        order.setCreateDate(new Date());
        order.setStatus("Pending"); // Mặc định là chờ xử lý
        Order savedOrder = orderRepo.save(order);
        for (OrderDTO.OrderDetailDTO item : orderDTO.getDetails()) {
            OrderDetail detail = new OrderDetail();
            detail.setOrder(savedOrder);
            detail.setProduct(productRepo.findById(item.getProductId()).get());
            detail.setPrice(item.getPrice());
            detail.setQuantity(item.getQuantity());
            orderDetailRepo.save(detail);
        }
        return savedOrder;
    }

    // 2. LẤY LỊCH SỬ ĐƠN HÀNG CỦA TÔI (User)
    @GetMapping("/my-orders")
    public List<Order> getMyOrders(Principal principal) {
        String username = principal.getName();
        return orderRepo.findByAccount_Username((username));
    }

    // 3. QUẢN LÝ ĐƠN HÀNG (Admin) - Lấy tất cả
    @GetMapping("/all")
    public List<Order> getAllOrders() {
        return orderRepo.findAll();
    }
}