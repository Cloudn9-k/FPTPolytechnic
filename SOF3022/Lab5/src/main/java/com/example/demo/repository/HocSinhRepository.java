package com.example.demo.repository;

import com.example.demo.model.HocSinh;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HocSinhRepository extends JpaRepository<HocSinh,Integer> {
    public List<HocSinh> findHocSinhsByTenHocSinhContains(String ten);
}
