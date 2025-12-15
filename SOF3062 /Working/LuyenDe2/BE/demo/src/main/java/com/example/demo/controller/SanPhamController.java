package com.example.demo.controller;

import com.example.demo.request.SanPhamRequest;
import com.example.demo.response.SanPhamResponse;
import com.example.demo.service.SanPhamService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/san-pham")
@CrossOrigin("http://localhost:5173/")
public class SanPhamController {
    @Autowired
    SanPhamService sanPhamService;
    @GetMapping("/hien-thi")
    public List<SanPhamResponse> getAll(){
        return sanPhamService.getAll();
    }
    @GetMapping("/phan-trang")
    public List<SanPhamResponse> phanTrang(@RequestParam(defaultValue = "0") Integer page){
        return sanPhamService.phanTrang(page,5);
    }
    @PostMapping("/add")
    public void add(@RequestBody @Valid SanPhamRequest sanPhamRequest) {
        sanPhamService.add(sanPhamRequest);
    }
    @PutMapping("/update/{id}")
    public void update(@PathVariable Integer id,@RequestBody @Valid SanPhamRequest sanPhamRequest) {
        sanPhamService.update(id, sanPhamRequest);
    }
    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable Integer id) {
        sanPhamService.delete(id);
    }
}
