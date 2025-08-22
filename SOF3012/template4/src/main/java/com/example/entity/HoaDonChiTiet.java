package com.example.entity;

import javax.persistence.*;
import java.math.BigDecimal;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "hoa_don_chi_tiet")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class HoaDonChiTiet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "id_hoa_don")
    private HoaDon hoaDon;

    @ManyToOne
    @JoinColumn(name = "id_sp")
    private SanPham sanPham;

    @Column(name = "so_luong")
    private Integer soLuong;

    @Column(name = "don_gia", precision = 20, scale = 2)
    private BigDecimal donGia;

    @Column(name = "thanh_tien", precision = 20, scale = 2)
    private BigDecimal thanhTien;
}