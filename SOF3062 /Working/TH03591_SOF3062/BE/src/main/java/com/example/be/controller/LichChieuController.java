package com.example.be.controller;

import com.example.be.entity.LichChieu;
import com.example.be.request.LichChieuRequest;
import com.example.be.response.LichChieuResponse;
import com.example.be.service.LichChieuService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/lich-chieu")
@CrossOrigin("http://localhost:5173/")
public class LichChieuController {
    @Autowired
    LichChieuService lichChieuService;
    @GetMapping("/hien-thi")
    public List<LichChieuResponse> getAll() {
        return lichChieuService.getAll();
    }
    @GetMapping("/phan-trang")
    public List<LichChieuResponse> getPhanTrang(@RequestParam(defaultValue = "0") Integer id) {
        return lichChieuService.phanTrang(id,5);
    }
    @PostMapping("/add")
    public void add(@RequestBody @Valid LichChieuRequest lichChieuRequest) {
        lichChieuService.add(lichChieuRequest);
    }
    @PutMapping("/update/{id}")
    public void update(@PathVariable Integer id, @RequestBody @Valid LichChieuRequest lichChieuRequest) {
        lichChieuService.update(id,lichChieuRequest);
    }
    @DeleteMapping("/delete/{id}")
    public void delete(@PathVariable Integer id) {
        lichChieuService.delete(id);
    }
}
