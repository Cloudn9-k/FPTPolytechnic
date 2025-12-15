package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "san_pham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ten_san_pham")
    private String tenSanPham;
    @Column(name = "don_gia")
    private BigDecimal donGia;
    @Column(name = "so_luong")
    private Integer soLuong;
    @Column(name = "mo_ta")
    private String moTa;
    @Column(name = "ngay_tao")
    private Date ngayTao;
    @Column(name = "trang_thai")
    private Boolean trangThai;
    @ManyToOne
    @JoinColumn(name = "danh_muc_id", referencedColumnName = "id")
    private DanhMuc danhMuc;
}
