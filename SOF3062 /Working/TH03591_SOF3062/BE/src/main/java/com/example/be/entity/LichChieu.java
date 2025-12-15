package com.example.be.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "lich_chieu")
public class LichChieu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ngay_chieu")
    private String ngayChieu;
    @Column(name = "gio_chieu")
    private String gioChieu;
    @Column(name = "phong_chieu")
    private String phongChieu;
    @Column(name = "gia_ve")
    private Float giaVe;
    @Column(name = "trang_thai")
    private Boolean trangThai;
    @Column(name = "nguoi_xu_ly")
    private String nguoiXuLy;
    @Column(name = "ghi_chu")
    private String ghiChu;
    @Column(name = "so_ghe_trong")
    private Integer soGheTrong;
    @ManyToOne
    @JoinColumn(name = "phim_id", referencedColumnName = "id")
    private Phim phim;
}
