package com.example.tutorsof3022.luyentap1.repository;


import com.example.tutorsof3022.luyentap1.model.MonHoc;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MonHocRepository extends JpaRepository<MonHoc, Integer> {
    public List<MonHoc> findMonHocsByTenMonContains(String ten);
}
