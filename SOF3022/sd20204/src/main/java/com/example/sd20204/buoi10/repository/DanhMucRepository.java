package com.example.sd20204.buoi10.repository;

import com.example.sd20204.buoi10.model.DanhMuc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DanhMucRepository extends JpaRepository<DanhMuc, Integer>{
//integer la kieu du lieu khoa chinh

}
