package com.example.be.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "phim")
public class Phim {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ten_phim")
    private String tenPhim;

    @Column(name = "dao_dien")
    private String daoDien;

    @Column(name = "the_loai")
    private String theLoai;

    @Column(name = "nam_san_xuat")
    private Integer namSanXuat;

    @Column(name = "thoi_luong")
    private Integer thoiLuong;

    @Column(name = "ngon_ngu")
    private String ngonNgu;

    @Column(name = "diem_danh_gia")
    private Float diemDanhGia;

    @Column(name = "trang_thai")
    private Boolean trangThai;

    @Column(name = "ghi_chu")
    private String ghiChu;
}
