package com.example.demau.controller;

import com.example.demau.repository.DonHangRepository;
import com.example.demau.request.DonHangRequest;
import com.example.demau.response.DonHangResponse;
import com.example.demau.service.DonHangService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/don-hang")
@CrossOrigin(origins = "http://localhost:5173")
public class DonHangController {
    @Autowired
    DonHangService donHangService;
    @GetMapping("/hien-thi")
    public List<DonHangResponse> hienThi(){
        return donHangService.getAll();
    }
    @GetMapping("/phan-trang")
    public List<DonHangResponse> phanTrang(@RequestParam Integer page){
       int pageSize = 5;
       return donHangService.phanTrang(page,pageSize);
    }
    @PostMapping("/add")
    public void add(@RequestBody @Valid DonHangRequest request) {
        donHangService.add(request);
    }
    @PutMapping("/update")
    public void update(@RequestBody @Valid DonHangRequest request) {
        donHangService.update(request);
    }

    @DeleteMapping("/delete")
    public void delete(@RequestParam Integer id) {
        donHangService.delete(id);
    }

}


