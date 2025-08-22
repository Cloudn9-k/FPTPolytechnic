package com.example.entity;

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
@Table(name = "san_pham")
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
    private String mota;
    @Column(name = "website")
    private String website;
    @Column(name = "gia_ban")
    private BigDecimal giaBan;
    @Column(name = "so_luong")
    private Integer soLuong;
    @Column(name = "trang_thai")
    private Integer trangThai;
    @ManyToOne
    @JoinColumn(name = "id_loai_sp")
    private LoaiSp loaiSp;

}
