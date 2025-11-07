package com.example.sd20204.buoi10.repository;

import com.example.sd20204.buoi10.model.SanPham;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SanPhamRepository extends JpaRepository<SanPham, Integer> {
    public List<SanPham> findSanPhamsByTenContains(String ten);

    // JPQL -> huong toi class
    @Query(value = "SELECT sp FROM SanPham sp WHERE sp.gia BETWEEN :min AND :max")
    public List<SanPham> timKiemSanPhamTheoKhoangGia(@Param("min") Float min, @Param("max") Float max);

    // SQL -> huong toi bang
    @Query(value = "SELECT * FROM san_pham sp WHERE sp.gia BETWEEN :min AND :max", nativeQuery = true)
    public List<SanPham> timKiemSanPhamTheoKhoangGiaSQL(@Param("min") Float min, @Param("max") Float max);
}
