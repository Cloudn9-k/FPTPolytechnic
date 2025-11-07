package com.example.tutorsof3022.luyenTap2.repository;

import com.example.tutorsof3022.luyenTap2.model.HocSinh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HocSinhRepository extends JpaRepository<HocSinh,Integer> {
    public List<HocSinh> findHocSinhsByTenHocSinhContains(String ten);
}
