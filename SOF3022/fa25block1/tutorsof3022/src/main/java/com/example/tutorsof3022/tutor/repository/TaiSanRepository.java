package com.example.tutorsof3022.tutor.repository;

import com.example.tutorsof3022.tutor.model.TaiSan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TaiSanRepository extends JpaRepository<TaiSan, Integer> {
    //QUERY METHOD
    public List<TaiSan> findTaiSansByTenContains(String ten);
    // JPQL
    @Query("select ts from TaiSan ts Where ten Like %:ten%")
    public List<TaiSan> searchTaiSanTheoTen(@Param("ten")String ten);

    @Query(value = "select * from TaiSan ts Where ten Like %:ten%", nativeQuery = true)
    public List<TaiSan> searchTaiSanTheoTenSQL(@Param("ten")String ten);

}
