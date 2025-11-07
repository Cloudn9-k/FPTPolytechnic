package com.example.demo.De1.repository;

import com.example.demo.De1.Model.DonHang;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DonHangRepository extends JpaRepository<DonHang,Integer> {
    public List<DonHang>getDonHangsByTenKhachHangContains(String ten);
}
