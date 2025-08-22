package com.example.entity;

import java.math.BigDecimal;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "san_pham")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "mota")
    private String moTa;

    @Column(name = "website")
    private String website;

    @Column(name = "gia_ban")
    private BigDecimal giaBan;

    @Column(name = "so_luong")
    private Integer soLuong;

    @ManyToOne
    @JoinColumn(name = "id_loai_sp")
    private LoaiSp loaiSp;

    @Column(name = "trang_thai")
    private Integer trangThai;
}