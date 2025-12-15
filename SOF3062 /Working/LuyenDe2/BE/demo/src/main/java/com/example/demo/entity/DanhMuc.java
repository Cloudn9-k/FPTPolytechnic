package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "danh_muc")
public class DanhMuc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ten_danh_muc")
    private String tenDanhMuc;
    @Column(name = "mo_ta")
    private String moTa;
    @Column(name="trang_thai")
    private Boolean trangThai;
}
