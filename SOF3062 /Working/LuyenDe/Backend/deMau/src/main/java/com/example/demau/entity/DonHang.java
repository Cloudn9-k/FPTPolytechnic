package com.example.demau.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "don_hang")
public class DonHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ma_don_hang")
    private String maDonHang;

    @Column(name = "ngay_dat")
    private String ngayDat;

    @Column(name = "tong_tien")
    private Float tongTien;

    @Column(name = "dia_chi_giao")
    private String diaChiGiao;

    @Column(name = "so_dien_thoai_giao")
    private String soDienThoaiGiao;

    @Column(name = "ghi_chu")
    private String ghiChu;

    @Column(name = "trang_thai")
    private String trangThai;

    @Column(name = "nguoi_xu_ly")
    private String nguoiXuLy;

    @ManyToOne
    @JoinColumn(name = "khach_hang_id", referencedColumnName = "id")
    private KhachHang khachHang;
}
