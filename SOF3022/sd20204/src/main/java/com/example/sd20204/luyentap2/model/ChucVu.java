package com.example.sd20204.luyentap2.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name = "chuc_vu")
public class ChucVu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ma_chuc_vu")
    private String maChucVu;
    @Column(name = "ten_chuc_vu")
    private String tenChucVu;
    @Column(name = "mo_ta")
    private String moTa;
    @Column(name = "he_so_luong")
    private Float heSoLuong;
}
