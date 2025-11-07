package com.example.tutorsof3022.luyenTap2.repository;

import com.example.tutorsof3022.luyenTap2.model.TruongHoc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TruongHocRepository extends JpaRepository<TruongHoc, Integer> {
}
